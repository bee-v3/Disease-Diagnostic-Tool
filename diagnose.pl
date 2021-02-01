:-['disease'].
%:- initialization(start).

/**
 * format_string(+In : string, -Out : atom).
 *
 * Takes an incoming string, converts its contents to lowercase,
 * splits the string at whitespaces into a list of words, and concats
 * it back together with underscores
 *
 * @param In The incoming string.
 * @param Out Modified string as an atom.
 **/
format_string([],_).
format_string(In,Out) :-
	string_lower(In, LowerCase),
	atom_string(Atom_String, LowerCase),
	split_string(Atom_String, " ", "", SplitAtoms),
	atomic_list_concat(SplitAtoms, "_", Out).

/**
 * print_list(+List1 : list).
 *
 * Writes each item in List1 to the output stream on its own line.
 *
 * @param List1 The list to have its contents written to output stream.
 */
print_list([]).
print_list([H]) :-
	write(H),
	nl, nl.
print_list([H|T]) :-
	write(H),
	nl,
	print_list(T).

/**
 * match_all_symptoms(+Symp : list, +List1 : list, -Matching : list).
 *
 * Builds a set of symptoms from each element in List1, checks to see if
 * all elements in that set are a subset of symptoms in Symp, and adds
 * the head of List1 to Matching if so.
 *
 * @param Symp List containing symptoms input by user.
 * @param List1 List containing all diseases in 'disease.pl'.
 * @param Matching List containing matching elements from List1
 */
match_all_symptoms(_,[],_).
match_all_symptoms(Symp, [H], Matching):-
	setof(Y,symptom(H,Y),M),
	(subset(M,Symp) -> Matching = [H|[]];
	Matching = []).
match_all_symptoms(Symp, [H|T], Matching) :-
	setof(Y,symptom(H,Y),M),
	match_all_symptoms(Symp,T,M2),
        (subset(M,Symp) -> Matching = [H|M2];
	Matching = M2).

/**
 * match_any_search(?List1 : list, ?L : list).
 *
 * Returns true if any element of List1 is also in L,
 * and false otherwise.
 *
 * @param List1 Contains elements to compare to L.
 * @param L List that elements in List1 are compared to.
 */
match_any_search([],_):- false.
match_any_search([H],L):-
	(member(H,L) -> true; false).
match_any_search([H|T],L):-
	(member(H,L) -> true;
	match_any_search(T,L)).

/**
 * match_any_locale(+Loc : list, +List1 : list, -Matching : list).
 *
 * Builds a set of locales from each element in List1, checks to see if
 * any element in that set is a subset of symptoms in Symp, and adds
 * the head of List1 to Matching if so.
 *
 * @param Loc List containing locales input by user.
 * @param List1 List containing all diseases in 'disease.pl'.
 * @param Matching List containing matching elements from List1
 */
match_any_locale(_, [], _).
match_any_locale(Loc, [H], Matching):-
	setof(Y, locale(H,Y),M),
	((match_any_search(M,Loc);member('all',M)) -> Matching = [H|[]];
	Matching = []).
match_any_locale(Loc, [H|T], Matching) :-
	setof(Y, locale(H,Y),M),
	match_any_locale(Loc,T,M2),
        ((match_any_search(M,Loc); member('all',M)) -> Matching = [H|M2];
	Matching = M2).

/**
 * test_search(+List1 : list, -P : list).
 *
 * Gaters a set of tests for each head element in List1 and
 * appends said set to P.
 *
 * @param List1 Incoming list of diseases.
 * @param P Outgoing list of tests.
 */
test_search([],_).
test_search([H], P):-
	setof(X,test(H,X),P).
test_search([H|T], P) :-
	setof(X,test(H,X),P1),
	test_search(T,P2),
	append(P1,P2,P).

/**
 * get_test_results(-R : list).
 *
 * Gathers test results from user input and returns it as a list.
 *
 * @param R List of tests user has designated as Positive.
 */
get_test_results(R) :-
	write("Enter test name. Type Done if finished: "),
	read_string(user, "\n", "\r", _, In),
	(In = "Done" -> R = [];
	format_string(In,In2),
	write("Enter test result as Positive or Negative: "),
	read_string(user, "\n", "\r", _, Res),
	get_test_results(Z2),
        ((Res = "Positive"; Res = "positive") -> R = [In2|Z2];
	R = Z2)).

/**
 * analyze_test_results(+A : list, +List1 : list, -B : list).
 *
 * Returns list B containing disease elements in List1 whose
 * tests match any element in A.
 *
 * @param A List of positive tests
 * @param List1 List of possible diseases
 * @param B List of diseases generated from A and List1
 */
analyze_test_results(_,[],_).
analyze_test_results(A,[H],B) :-
	setof(X,test(H,X),R),
	(match_any_search(R,A) -> B = [H|[]];
	B = []).
analyze_test_results(A,[H|T],B) :-
	setof(X,test(H,X),R),
	analyze_test_results(A,T,B2),
	(match_any_search(R,A) -> B = [H|B2];
	B = B2).

/**
 * getlist(-Z : list).
 *
 * Gets multiple lines of user input and returns it as a list of atoms.
 *
 * @param Z List of user input.
 */
getlist(Z) :-
	read_string(user, "\n", "\r", _, In),
	(In = "Done" -> Z = [];
	format_string(In,In2),
	getlist(Z2),
        Z = [In2|Z2]).
		
/**
 * start.
 *
 * Program's driver. Gets user input for symptoms and locations visited
 */
start :-
	nl,
	writeln("Welcome to the Disease Diagnostic Center."),
	writeln("Please enter symptoms now, enter Done when finished"),
	getlist(S),
	nl,
	writeln("Please list locations the patient has visited within the last 6 months."),
	writeln("Please enter Done when finished."),
	getlist(L),
	find_diseases(S,L).

/**
 * find_diseases(+Sympt : list, +Local : list).
 *
 * Informs user of possible diseases.
 *
 * @param Sympt List containing symptoms input by user.
 * @param Local List containing locales input by user.
 */
find_diseases(Sympt,Local) :-
	nl,
	setof(X,Y^symptom(X,Y),Diseaselist),
	match_all_symptoms(Sympt,Diseaselist,Sorteddisease),
	match_any_locale(Local,Sorteddisease,Matcheddiseases),
	test_search(Matcheddiseases,Possibletests),
	(Matcheddiseases = [] ->
	writeln("No matching diseases found. Please see a medical professional for further assistance."),
	end;
	writeln("Possible diseases: "),
	print_list(Matcheddiseases),
	writeln("Possible tests:"),
	print_list(Possibletests),
	user_input_tests(Matcheddiseases)).

/**
 * user_input_tests(+Matcheddiseases : list).
 *
 * Gathers tests results from user and returns a list of matching
 * diseases.
 *
 * @param Matcheddiseases List of possible diseases.
 */
user_input_tests(Matcheddiseases):-
	writeln("Enter test results. Type a space where underscores appear in the possible tests list.\nEnter 'Done' to finish"),
	get_test_results(Results),
	analyze_test_results(Results,Matcheddiseases,FinalDiseaseList),
	(FinalDiseaseList = [] ->
	writeln("No matching diseases found. Please see a medical professional for further assistance.");
	nl,
	writeln("Your patient has:"),
	print_list(FinalDiseaseList),
	give_treatments(FinalDiseaseList)),
	end.

/**
 * give_treatments(+List1 : list).
 *
 * Displays a list of treatments each disease element in List1
 *
 * @param List1 A list of diseases.
 */
give_treatments([]):- end.
give_treatments([H]):-
	setof(X,treatment(H,X),Treat),
	writeln("Recommended treatments for "),
	write(H), write(":"),
	nl,
	print_list(Treat).
give_treatments([H|T]):-
	setof(X,treatment(H,X),Treat),
	writeln("Recommended treatments for "),
	write(H), write(":"),
	nl,
	print_list(Treat),
	give_treatments(T).

/**
 * end.
 *
 * Outputs an exit message to the output stream.
 */
end :-
	writeln("Diagnosis finished.").

#include<iostream>
#include<string>
#include<algorithm>
using namespace std;


class lowercase {
public:
	char a = 'a', b ='b',c = 'c', d = 'd',e = 'e',f = 'f',g = 'g', h = 'h', i = 'i', \
		j = 'j', k = 'k', l = 'l', m = 'm', n = 'n', o = 'o', p = 'p',q = 'q', r = 'r',\
		s = 's', t = 't', u = 'u',v = 'v', w = 'w', x = 'x',y = 'y',z = 'z';
} lc;

class uppercase {
public:
	char A = 'A', B = 'B', C = 'C',D = 'D', E = 'E',F = 'F', G = 'G', H = 'H', I = 'I', \
		J = 'J', K = 'K', L = 'L', M = 'M', N = 'N', O = 'O', P = 'P', Q = 'Q', R = 'R',\
		S = 'S', T = 'T', U = 'U', V = 'V', W = 'W', X = 'X', Y = 'Y',Z = 'Z';
} uc;

/*class otherinputs {
public:
	// sc: special characters
	//what if i input " ", this program seems to do not print the chars after " "
	char sc1 = '`', sc2 = '	', sc3 = ',', sc4 = '.', sc5 = '/', sc6 = '\;', sc7 = '\'', sc8 = '=', \
		sc9 = '-', sc10 = '/', sc11 = '*', sc12 = '0', sc13 = '1', sc14 = '2', sc15 = '3', sc16 = '4', \
		sc17 = '5', sc18 = '6', sc19 = '7', sc20 = '8',sc21 = '9';
} oi;*/

//the following function transform lowercase into upper case, but should I eliminate other chars except letter??? 
string toupper_string(string mystr) {

	for (int i = 0; i < mystr.length(); i++) {
		if (mystr[i] == lc.a) {
			mystr[i] = uc.A;
		}
		else if (mystr[i] == lc.b) {
			mystr[i] = uc.B;
		}
		else if (mystr[i] == lc.c) {
			mystr[i] = uc.C;
		}
		else if (mystr[i] == lc.d) {
			mystr[i] = uc.D;
		}
		else if (mystr[i] == lc.e) {
			mystr[i] = uc.E;
		}
		else if (mystr[i] == lc.f) {
			mystr[i] = uc.F;
		}
		else if (mystr[i] == lc.g) {
			mystr[i] = uc.G;
		}
		else if (mystr[i] == lc.h) {
			mystr[i] = uc.H;
		}
		else if (mystr[i] == lc.i) {
			mystr[i] = uc.I;
		}
		else if (mystr[i] == lc.j) {
			mystr[i] = uc.J;
		}
		else if (mystr[i] == lc.k) {
			mystr[i] = uc.K;
		}
		else if (mystr[i] == lc.l) {
			mystr[i] = uc.L;
		}
		else if (mystr[i] == lc.m) {
			mystr[i] = uc.M;
		}
		else if (mystr[i] == lc.n) {
			mystr[i] = uc.N;
		}
		else if (mystr[i] == lc.o) {
			mystr[i] = uc.O;
		}
		else if (mystr[i] == lc.p) {
			mystr[i] = uc.P;
		}
		else if (mystr[i] == lc.q) {
			mystr[i] = uc.Q;
		}
		else if (mystr[i] == lc.r) {
			mystr[i] = uc.R;
		}
		else if (mystr[i] == lc.s) {
			mystr[i] = uc.S;
		}
		else if (mystr[i] == lc.t) {
			mystr[i] = uc.T;
		}
		else if (mystr[i] == lc.u) {
			mystr[i] = uc.U;
		}
		else if (mystr[i] == lc.v) {
			mystr[i] = uc.V;
		}
		else if (mystr[i] == lc.w) {
			mystr[i] = uc.W;
		}
		else if (mystr[i] == lc.x) {
			mystr[i] = uc.X;
		}
		else if (mystr[i] == lc.y) {
			mystr[i] = uc.Y;
		}
		else if (mystr[i] == lc.z) {
			mystr[i] = uc.Z;
		}
		else if (mystr[i] == uc.A) {
			mystr[i] = uc.A;
		}
		else if (mystr[i] == uc.B) {
			mystr[i] = uc.B;
		}
		else if (mystr[i] == uc.C) {
			mystr[i] = uc.C;
		}
		else if (mystr[i] == uc.D) {
			mystr[i] = uc.D;
		}
		else if (mystr[i] == uc.E) {
			mystr[i] = uc.E;
		}
		else if (mystr[i] == uc.F) {
			mystr[i] = uc.F;
		}
		else if (mystr[i] == uc.G) {
			mystr[i] = uc.G;
		}
		else if (mystr[i] == uc.H) {
			mystr[i] = uc.H;
		}
		else if (mystr[i] == uc.I) {
			mystr[i] = uc.I;
		}
		else if (mystr[i] == uc.J) {
			mystr[i] = uc.J;
		}
		else if (mystr[i] == uc.K) {
			mystr[i] = uc.K;
		}
		else if (mystr[i] == uc.L) {
			mystr[i] = uc.L;
		}
		else if (mystr[i] == uc.M) {
			mystr[i] = uc.M;
		}
		else if (mystr[i] == uc.N) {
			mystr[i] = uc.N;
		}
		else if (mystr[i] == uc.O) {
			mystr[i] = uc.O;
		}
		else if (mystr[i] == uc.P) {
			mystr[i] = uc.P;
		}
		else if (mystr[i] == uc.Q) {
			mystr[i] = uc.Q;
		}
		else if (mystr[i] == uc.R) {
			mystr[i] = uc.R;
		}
		else if (mystr[i] == uc.S) {
			mystr[i] = uc.S;
		}
		else if (mystr[i] == uc.T) {
			mystr[i] = uc.T;
		}
		else if (mystr[i] == uc.U) {
			mystr[i] = uc.U;
		}
		else if (mystr[i] == uc.V) {
			mystr[i] = uc.V;
		}
		else if (mystr[i] == uc.W) {
			mystr[i] = uc.W;
		}
		else if (mystr[i] == uc.X) {
			mystr[i] = uc.X;
		}
		else if (mystr[i] == uc.Y) {
			mystr[i] = uc.Y;
		}
		else if (mystr[i] == uc.Z) {
			mystr[i] = uc.Z;
		}
		else {
			mystr[i] = '*';
		
		}
		}

	return mystr;
}

int main() {
	lowercase lc;
	string a1,a2;
	cout << "Please type your first name: "<< endl;
	cin >> a1;
	cout << "Please type your surname: " << endl;
	cin >> a2;

	string A1 = toupper_string(a1);
	string A2 = toupper_string(a2);

	cout << "\n";
	cout << A1 << " " << A2 << ", Welcome to APCM!" << endl;
	cout << "\n";
	int A_max = A1.length() > A2.length() ? A1.length() : A2.length();


	
	char chars[] = "*";

	for (int i = 0; i < strlen(chars);i++) {
	
		A1.erase(remove(A1.begin(), A1.end(), chars[i]), A1.end());
		A2.erase(remove(A2.begin(), A2.end(), chars[i]), A2.end());

	}

	cout << "--Name checked, all non-letter char deleted!--" <<  endl;
	cout << "\n";
	cout << A1 << " " << A2 << ", Welcome to APCM!" << endl;
	cout << strlen(chars);
	return 0;
}

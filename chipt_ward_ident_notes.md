---
author: Matthias Heinz
title: Notes on Ward identities in chiral perturbation theory
header-includes:
  - \usepackage{slashed}
  - \usepackage{amsmath}
include-in-header: |
  \newcommand{\U}[1]{\textrm{U}(#1)}
  \newcommand{\suthree}{\textrm{SU}(3)}
  \newcommand{\suxsu}{\suthree_{L} \times \suthree_{R}}
  \newcommand{\suxsuxu}{\suxsu \times \U{1}_V}
  \newcommand{\suxsuxuxu}{\suxsu \times \U{1}_L \times \U{1}_R}
  \newcommand{\uxu}{\U{3} \times \U{3}}
  \newcommand{\sul}{\textrm{SU}(3)_{L}}
  \newcommand{\sur}{\textrm{SU}(3)_{R}}
  \newcommand{\Phidag}{\Phi^{\dagger}}
  \newcommand{\Phistar}{\Phi^{*}}
  \newcommand{\dmulo}[1]{\partial_{\mu}#1}
  \newcommand{\dmuhi}[1]{\partial^{\mu}#1}
  \newcommand{\dmulop}[1]{(\partial_{\mu}#1)}
  \newcommand{\dmuhip}[1]{(\partial^{\mu}#1)}
  \newcommand{\dmulox}[2]{\partial_{\mu}^{#2}#1}
  \newcommand{\dmuhix}[2]{\partial^{\mu}^{#2}#1}
  \newcommand{\dmulopx}[2]{(\partial_{\mu}^{#2}#1)}
  \newcommand{\dmuhipx}[2]{(\partial^{\mu}^{#2}#1)}
  \newcommand{\Gmu}{G^{\mu}}
  \newcommand{\Jmu}{J^{\mu}}
  \newcommand{\timeorder}[1]{T[#1]}
  \newcommand{\4ddelta}[2]{\delta^{4}(#1 - #2)}
  \newcommand{\vecoct}{V_{a}^{\mu}}
  \newcommand{\axvoct}{A_{a}^{\mu}}
  \newcommand{\vecsing}{V^{\mu}}
  \newcommand{\axvsing}{A^{\mu}}
  \newcommand{\vecoctexpl}{\bar{q}\gamma^{\mu}\frac{\lambda_a}{2}q}
  \newcommand{\axvoctexpl}{\bar{q}\gamma^{\mu}\gamma_5\frac{\lambda_a}{2}q}
  \newcommand{\vecsingexpl}{\bar{q}\gamma^{\mu}q}
  \newcommand{\axvsingexpl}{\bar{q}\gamma^{\mu}\gamma_5q}
  \newcommand{\scalardensity}[1]{S_{#1}}
  \newcommand{\scalardensityx}[2]{\scalardensity{#1}(#2)}
  \newcommand{\scalardensityexpl}[1]{\bar{q} \lambda_{#1} q}
  \newcommand{\scalardensityexplx}[2]{\bar{q}(#2) \lambda_{#1} q(#2)}
  \newcommand{\pscalardensity}[1]{P_{#1}}
  \newcommand{\pscalardensityx}[2]{\pscalardensity{#1}(#2)}
  \newcommand{\pscalardensityexpl}[1]{i \bar{q} \gamma_5 \lambda_{#1} q}
  \newcommand{\pscalardensityexplx}[2]{\bar{q}(#2) \gamma_5 \lambda_{#1} q(#2)}
  \newcommand{\commutator}[2]{[#1, #2]}
  \newcommand{\lext}{\mathcal{L}_{\textrm{ext}}}
---

# Sources

These notes exist as a form of preparation for a seminar I have to give on this topic.
The primary source that these notes are essentially completely based off of
is "A Primer for Chiral Perturbation Theory" by Scherer and Schindler.
I also looked some additional things up in the papers by Gasser and Leutwyler
published from 1982 to 1985.
None of the content in these notes are my own developments.
This is purely an attempt at reassembling the content of Scherer and Schindler's notes
in a manner that gets at the essential points relevant for my seminar.

# Introduction

In quantum field theories, scattering amplitudes can be calculated via
the evaluation of appropriate Green's functions and
the Lehmann-Symanzik-Zimmermann reduction formalism.
This means symmetries of the relevant theory that constrain, among other things, scattering amplitudes
also constrain Green's functions.
Additionally, these symmetries also provide constraints *among* Green's functions,
by considering, for example, the divergence of some Green's function.
These expressions can be simplified to relate the divergence of a Green's function
to one or more other Green's functions.
These relations are known as Ward-Fradkin-Takahashi identities,
which we will just refer to in short as Ward identities.

**Our goal in these notes is to understand how these Ward identities can be derived in general
(focusing on an approach within the path integral formalism)
and to see what Ward identities look like in QCD near the chiral limit.**

# Ward identities in a simple $\U{1}$ example

For our simple example, we consider a simple scalar field theory with two real scalar fields
($\Phi_1$ and $\Phi_2$)
with a global $\U{1}$ symmetry parametrized by the infinitesimal $\epsilon$:

\begin{equation}
\mathcal{L} = \frac{1}{2}(\dmulop{\Phidag}\dmuhip{\Phi})
- \frac{m^2}{2} \Phidag \Phi - \frac{\lambda}{4} (\Phidag \Phi)^2,
\end{equation}

with

\begin{align*}
  \Phi(x)& = \frac{1}{\sqrt{2}}(\Phi_1(x) + i \Phi_2(x)), \\
  \Phidag(x)& = \frac{1}{\sqrt{2}}(\Phi_1(x) - i \Phi_2(x)).
\end{align*}

Our Lagrangian is invariant under a global $\U{1}$ transformation:

\begin{align*}
\Phi & \rightarrow (1 + i \epsilon) \Phi, \\
\Phidag & \rightarrow (1 - i \epsilon) \Phidag,
\end{align*}

giving us the conserved current:

\begin{equation}
\Jmu = i (\dmuhip{\Phidag} \Phi - \Phidag \dmuhip{\Phi}).
\end{equation}

After canonical quantization, one can show that

$$
\Jmu \rightarrow \Jmu
$$

under the previously mentioned infinitesimal global transformation.
When considering the Green's function

\begin{equation}
\Gmu(x,y,z) = \mel*{0}{\timeorder{\Phi(x)\Jmu(y)\Phidag(z)}}{0},
\end{equation}

we see that it is also invariant under such a transformation,
a constraint imposed upon it by the symmetry of the theory.
Note that Green's functions will not always be invariant,
but will have specified transformation behavior based on the transformation behavior of the fields.
Furthermore, when considering the divergence of $\Gmu$, one finds:

\begin{equation}
\dmulox{\Gmu(x,y,z)}{y} = (\delta^4(y-x) - \delta^4(y-z))\mel*{0}{\timeorder{\Phi(x) \Phidag(z)}}{0}.
\end{equation}

This Ward identity relates a 3-point Green's function to a 2-point Green's function.
Next, we will go through the steps necessary to arrive at this result in the path integral formalism,
which will allow us to learn some general properties of the approach.
These will help us when we move on to the more complicated $\suxsuxu$
and will ultimately make the path integral formalism the approach of choice.

To briefly recap the path integral formalism,
we can calculate correlation functions
(in this case a 2-point correlation function)
via the following functional integral:

\begin{equation}
\mel{0}{\timeorder{\Phidag(x) \Phi(y)}}{0} =
\frac{\int \mathcal{D}\Phistar \mathcal{D}\Phi \Phistar(x) \Phi(y) \exp(i S[\Phi, \Phistar])}{\int \mathcal{D}\Phistar \mathcal{D}\Phi \exp(i S[\Phi, \Phistar])},
\end{equation}

where $S[\Phi, \Phistar]$ is the action of our theory:

$$
S[\Phi, \Phistar] = \int d^4x \mathcal{L}(x).
$$

To unite all correlation functions containing these operators in one object, we define a generating functional:

\begin{equation}
W[j, j^{*}] = \mel*{0}{\timeorder{\exp{i\int d^4x[j(x) \Phidag (x) + j^{*}(x) \Phi(x)]}}}{0},
\end{equation}

where we have introduced external sources $j(x)$ and $j^{*}(x)$.
With this functional, we can get any Green's function by taking functional derivatives
with respect to $j$ and $j^{*}$ at the coordinates we are interested in.
For example, the previous 2-point correlation function can be written as:

$$
\mel{0}{\timeorder{\Phidag(x) \Phi(y)}}{0} = \left.\left(-i\frac{\delta}{\delta j(x)} \right) \left(-i\frac{\delta}{\delta j^{*}(y)} \right) W[j, j^{*}] \right\rvert_{j=0,j^{*}=0}.
$$

These functional derivatives bring down factors of $\Phidag$ and $\Phi$ from our functional.
To discuss Green's functions containing our Noether current $\Jmu$, like $\Gmu$,
we need to add a source term for our current as well, giving us

\begin{equation}
W[j, j^{*}, j_{\mu}] = \mel*{0}{\timeorder{\exp{i\int d^4x[j(x) \Phidag (x) + j^{*}(x) \Phi(x) + j_{\mu}(x) \Jmu(x)]}}}{0}.
\end{equation}

From this, we can write $\Gmu$ as

\begin{equation}
\Gmu(x,y,z) = \left.(-i)^3 \frac{\delta^3 W[j, j^{*}, j_{\mu}]}{\delta j^{*}(x) \delta j_{\mu}(y) \delta j(z)}\right\rvert_{j=0,j^{*}=0,j_{\mu}=0}.
\end{equation}

To see the effects of symmetries of our theory on our generating functional,
let us consider its path integral representation

\begin{equation}
W[j, j^{*}, j_{\mu}] =
\int \mathcal{D}\Phistar \mathcal{D}\Phi \exp(i S[\Phi, \Phistar, j, j^{*}, j_{\mu}]),
\end{equation}

with

$$
S[\Phi, \Phistar, j, j^{*}, j_{\mu}] = S[\Phi, \Phistar] + \int d^4x[j(x) \Phistar (x) + j^{*}(x) \Phi(x) + j_{\mu}(x) \Jmu(x)].
$$

Demanding that this action remain invariant under a *local* infinitesimal $\U{1}$ transformation
gives us the necessary simultaneous transformation behavior of the external sources:

\begin{align*}
j(x) & \rightarrow (1 + i \epsilon(x))j(x), \\
j^{*}(x) & \rightarrow (1 - i \epsilon(x))j^{*}(x), \\
j_{\mu}(x) & \rightarrow j_{\mu} - \dmulop{\epsilon(x)}.
\end{align*}

One then also sees that as a result the generating functional is invariant under the same transformation:

\begin{equation}
W[j, j^{*}, j_{\mu}] = W[j^{\prime}, j^{\prime*}, j^{\prime}_{\mu}].
\end{equation}

An expansion of the difference between the original and transformed generating functionals in powers of $\epsilon(x)$ gives the condition

$$
0 = \int d^{4}x \epsilon(x) \left[ i j(x) \frac{\delta}{\delta j(x)} - i j^{*}(x) \frac{\delta}{\delta j^{*}(x)} + \dmulox{\frac{\delta}{\delta j_{\mu}(x)}}{x} \right] W[j, j^{*}, j_{\mu}],
$$

which due to being valid for all $\epsilon(x)$ simplifies to

\begin{equation}
\left[ j(x) \frac{\delta}{\delta j(x)} - j^{*}(x) \frac{\delta}{\delta j^{*}(x)} - i \dmulox{\frac{\delta}{\delta j_{\mu}(x)}}{x} \right] W[j, j^{*}, j_{\mu}] = 0.
\end{equation}

We can now return to the divergence of $\Gmu$ and derive the Ward identity from before:

\begin{align*}
\dmulox{\Gmu(x, y, z)}{y} & = \left.(-i)^3 \dmulox{\frac{\delta^3 W[j, j^{*}, j_{\mu}]}{\delta j^{*}(x) \delta j_{\mu}(y) \delta j(z)}}{y}\right\rvert_{j=0,j^{*}=0,j_{\mu}=0}, \\
& = (-i^2) \left. \frac{\delta^2}{\delta j^{*}(x) \delta j(z)} \left[(-i) \dmulox{\frac{\delta W}{\delta j_{\mu}(y)}}{y} \right]\right\rvert_{j=0,j^{*}=0,j_{\mu}=0}, \\
& = (-i^2) \left. \frac{\delta^2}{\delta j^{*}(x) \delta j(z)} \left[j^{*}(y)\frac{\delta W}{\delta j^{*}(y)} - j(y)\frac{\delta W}{\delta j(y)} \right]\right\rvert_{j=0,j^{*}=0,j_{\mu}=0}, \\
& = (-i^2) \left. \delta^4(y - x)\frac{\delta^2 W}{\delta j^{*}(y)\delta j(z)} - \delta^4(y - z)\frac{\delta W}{\delta j^{*}(x)\delta j(y)} \right\rvert_{j=0,j^{*}=0,j_{\mu}=0}.
\end{align*}

Going from the second-to-last line to the last line,
we used that $\delta j^{*}(y) / \delta j^{*}(x) = \delta^4(y - x)$
and $\delta j(y) / \delta j(z) = \delta^4(y - z)$
and the chain rule terms leaving $j^{*}(y)$ and $j(y)$ untouched
disappear when our sources get set to 0.
Due to the delta functions, we can replace the $y$ coordinates in the functional derivatives
with $x$ and $z$ and evaluate the functional derivatives to obtain Green's functions, giving us

$$
\dmulox{\Gmu(x,y,z)}{y} = (\delta^4(y-x) - \delta^4(y-z)))\mel*{0}{\timeorder{\Phi(x) \Phidag(z)}}{0}.
$$

The key points to take from this example are:

- the generating functional is invariant under *local* symmetry transformations,
- the invariance of the functional can be used to derive a master equation
  that can be used to derive all Ward identities.

# Chiral Green's functions

Recall that in the chiral limit (quarks are massless) the light quark QCD Lagrangian can be written as

\begin{equation}
\mathcal{L}_{\textrm{QCD}}^{0} = \sum_{l=u,d,s}(\bar{q}_{R,l}i\slashed{D}q_{R,l} + \bar{q}_{L,l}i\slashed{D}q_{L,l})
- \frac{1}{4} \mathcal{G}_{a\mu\nu} \mathcal{G}_{a}^{\mu\nu}.
\end{equation}

This Lagrangian is invariant under a global $\uxu$ symmetry:

\begin{align}
\begin{pmatrix}
u_L \\ d_L \\ s_L
\end{pmatrix} & \rightarrow \exp{- i \sum_{a=1}^8 \Theta_{La} \frac{\lambda_a}{2}} e ^{-i \Theta_L}
\begin{pmatrix}
u_L \\ d_L \\ s_L
\end{pmatrix}, \\
\begin{pmatrix}
u_R \\ d_R \\ s_R
\end{pmatrix} & \rightarrow \exp{- i \sum_{a=1}^8 \Theta_{Ra} \frac{\lambda_a}{2}} e ^{-i \Theta_R}
\begin{pmatrix}
u_R \\ d_R \\ s_R
\end{pmatrix},
\end{align}

which has been explicitly decomposed into an $\suxsuxuxu$ representation.
Under a corresponding local transformation,
we find conserved left-handed and right-handed $\suthree$ currents, $L_{a}^{\mu}$ and $R_{a}^{\mu}$,
and conserved left-handed and right-handed singlet currents, $L^{\mu}$ and $R^{\mu}$.
After quantizing our theory,
we find that all the $\suthree$ currents are still conserved,
defining useful vector and axial-vector linear combinations like:

\begin{align}
\vecoct &= R_{a}^{\mu} + L_{a}^{\mu} = \vecoctexpl, \\
\axvoct &= R_{a}^{\mu} - L_{a}^{\mu} = \axvoctexpl.
\end{align}

We also find that the corresponding singlet vector current

\begin{equation}
\vecsing = R^{\mu} + L^{\mu} = \vecsingexpl
\end{equation}

is conserved, but the singlet axial-vector current

$$
\axvsing = R^{\mu} - L^{\mu} = \axvsingexpl
$$

is no longer conserved due to quantum corrections,
referred to as the anomaly.

For chiral Green's functions, we are interested in vacuum expectation values of
time-ordered products of color-neutral, Hermitian quadratic forms
(which can be related to processes involving mesons)
along with our conserved currents.
We introduce the scalar and pseudoscalar densities

\begin{align}
\scalardensityx{a}{x} & = \scalardensityexplx{a}{x}, \\
\pscalardensityx{a}{x} & = \pscalardensityexplx{a}{x},
\end{align}

where $a=0,...,8$.

One example Green's function is

\begin{equation}
\Gmu_{APab}(x, y) = \mel*{0}{\timeorder{\axvoct(x)\pscalardensityx{b}{y}}}{0},
\end{equation}

which is related to the pion decay process.
Chiral Ward identities refer to Ward identities which relate
the divergence of a Green's function containing $\vecoct$ or $\axvoct$
to some other Green's functions.
In this context, "chiral" refers to the underlying $\suxsu$ group
to which these currents correspond.
We can compute the divergence of our Green's function above, for example, and find

\begin{equation}
\dmulox{\Gmu_{APab}(x,y)}{x} = \delta(x_0 - y_0) \mel*{0}{\commutator{A_{a}^{0}(x)}{P_{b}(y)}}{0}
+ \mel*{0}{\timeorder{\dmulopx{\axvoct(x)}{x}\pscalardensityx{b}{y}}}{0}.
\end{equation}

Let us briefly discuss the general properties of this Ward identity.
First, we get an equal-time commutator of the charge density and the remaining operator.
Second, we get a term which replaces the Noether current in the original Green's function with its divergence.
In the exact chiral limit, this term vanishes.
If the breaking of chiral symmetry is small, we can incorporate this term perturbatively.
In general, for the divergence of a Green's function with a Noether current and multiple other operators,
we get a sum of terms with equal-time commutators between the Noether current charge density and the other operators
and a last term with the divergence of the Noether current.

# Chiral Ward identities via the current algebra

To get a simplified form for these chiral Ward identities,
we need to evaluate commutators of
the charge density of our Noether current of interest
with other Noether currents and our scalar and pseudoscalar densities.
The original algebra for the charge densities of our Neother currents is

\begin{align}
\commutator{Q_{La}}{Q_{Lb}} & = i f_{abc} Q_{Lc}, \\
\commutator{Q_{Ra}}{Q_{Rb}} & = i f_{abc} Q_{Rc}, \\
\commutator{Q_{La}}{Q_{Rb}} & = 0, \\
\commutator{Q_{La}}{Q_{V}} & = \commutator{Q_{Ra}}{Q_{V}} = 0.
\end{align}

This can easily be naively extended to our vector and axial-vector charge densities:

\begin{align}
\commutator{Q_{Va}}{Q_{Vb}} & = i f_{abc} Q_{Vc}, \\
\commutator{Q_{Aa}}{Q_{Ab}} & = i f_{abc} Q_{Vc}, \\
\commutator{Q_{Va}}{Q_{Ab}} & = i f_{abc} Q_{Ac}, \\
\commutator{Q_{Aa}}{Q_{Vb}} & = i f_{abc} Q_{Ac}, \\
\commutator{Q_{Aa}}{Q_{V}} & = \commutator{Q_{Va}}{Q_{V}} = 0.
\end{align}

However, a general derivation of the algebra obeyed by our Noether currents
and scalar and pseudoscalar densities is potentially error-prone.
The reason lies in a conceptual inconsistency first noticed by Schwinger,
which we will illustrate via an example from QED.
The electromagnetic current space and time components can be,
through the use of canonical commutation relations,
shown to commute:

$$
\commutator{J_{0}(t, \vec{x})}{J_{i}(t, \vec{y})} = 0.
$$

This implies that the following commutator vanishes:

$$
\commutator{J_{0}(t, \vec{x})}{\vec{\nabla}_y \cdot \vec{J}(t, \vec{y})} = - \commutator{J_{0}(t, \vec{x})}{\partial_{t} J_{0}(t, \vec{y})} = 0.
$$

Evaluating this commutator between the ground state for $\vec{x}=\vec{y}$ yields the result

$$
\mel*{0}{J_{0}(t, \vec{x})}{n} = 0
$$

for any intermediate state $\ket*{n}$,
which is unphysical because it would imply that the charge density operator could not generate $e^+ e^-$ pairs
when operating on the vacuum.
A correction to the original commutator containing a derivative of the delta function called the Schwinger term
alleviates this issue.
This is because the equal-time commutators can only be determined up to a factor of the derivative of the delta function.

So what does this mean for the chiral Ward identity we saw before?
Well, it is correct, which one can verify via the path integral formalism that we will discuss soon.
This comes from the fact that we are considering the naive time-ordered product
rather than the covariant time-ordered product, which has different behavior at the equal-time points.
Feynman postulated that the Schwinger terms cancel with the seagull terms from the covariant time-ordered product
so just using the naive time-ordered product and omitting Schwinger terms gives the right results.
However, one must tread carefully, and overall this "solution" is fairly unsatisfactory.

# Chiral Ward identities from the generating functional

The previously mentioned problems related to Schwinger terms are absent in the path integral formalism,
making it more convenient and allowing us to proceed with confidence.
We will proceed by constructing a generating functional for our Green's functions of interest
and demanding its invariance under a local transformation of the external fields.
This invariance is equivalent to the set of all chiral Ward identities
and can be used to look at divergences of Green's functions.

We add to the original QCD Lagrangian in the chiral limit a term coupling
our $\suxsu$ vector and axial-vector currents,
our singlet vector current,
and our scalar and pseudoscalar densities to external fields,

\begin{equation}
\mathcal{L} = \mathcal{L}^{0}_{\textrm{QCD}} + \lext
\end{equation}

with

\begin{equation}
\lext = \sum_{a = 1}^{8} v_a^{\mu} \vecoct + \frac{1}{3} v_{(s)}^{\mu} \vecsing + \sum_{a=1}^{8} a_a^{\mu} \axvoct
- \sum_{a=0}^{8}s_{a} \scalardensity{a} + \sum_{a=0}^{8}p_{a} \pscalardensity{a}.
\end{equation}

It will also be practical to consider a redefinition of $\lext$,

\begin{equation}
\lext = \bar{q} \gamma_{\mu} \left( v^{\mu} + \frac{1}{3} v_{(s)}^{\mu} + \gamma_5 a^{\mu} \right) q
- \bar{q} ( s - i \gamma_5 p) q,
\end{equation}

where we have used the explicit definitions of our quadratic forms and defined

\begin{align*}
v^{\mu} & = \sum_{a=1}^{8} v_{a}^{\mu} \frac{\lambda_a}{2}, \\
a^{\mu} & = \sum_{a=1}^{8} a_{a}^{\mu} \frac{\lambda_a}{2}, \\
s & = \sum_{a=0}^{8} s_{a} \lambda_a, \\
p & = \sum_{a=0}^{8} p_{a} \lambda_a.
\end{align*}

The physical case here corresponds to taking $v^{\mu}=a^{\mu}=v_{(s)}^{\mu}=p=0$
and $s=\textrm{diag}(m_u, m_d, m_s)$.
We can now define our generating functional in terms of $\lext$

\begin{equation}
W[v,a,s,p] = \exp{iZ[v,a,s,p]} = \mel*{0}{\timeorder{\exp{i \int d^4x \lext(x)}}}{0}_{0},
\end{equation}

where we emphasize that the quark operators and vacuum in this case
are the quark field operators and the ground state in the chiral limit.

Once again, with this we can get Green's functions by taking derivatives with respect to our sources
and setting the sources to a specific value at the end.
Consider the scalar $u$-quark condensate in the chiral limit.
Since $\bar{u}u$ (the (0,0) matrix element in our $3\times 3$ quark flavor space) can be written as

$$
\bar{u} u = \frac{1}{2} \bar{q} \left(\sqrt{\frac{2}{3}} \lambda_0 + \lambda_3 + \frac{1}{\sqrt{3}} \lambda_8 \right) q,
$$

we can get our condensate via

$$
\mel*{0}{\bar{u}(x) u(x)}{0}_{0} = \frac{i}{2} \left. \left[ \sqrt{\frac{2}{3}} \frac{\delta}{\delta s_0(x)} + \frac{\delta}{\delta s_3(x)} + \frac{1}{\sqrt{3}} \frac{\delta}{\delta s_8(x)} \right]
W[v,a,s,p]\right\rvert_{v=a=s=p=0}.
$$

It is also worth mentioning that we can calculate physical Green's functions,
that means for non-zero quark masses,
simply by choosing $s=\textrm{diag}(m_{u}, m_{d}, m_{s})$.
As an example, our previously considered chiral Green's function can be obtained as follows:

$$
\Gmu_{APab}(x, y) = \mel*{0}{\timeorder{\axvoct(x)\pscalardensityx{b}{y}}}{0}
= (-i)^2 \left. \frac{\delta^2}{\delta a_{a\mu}(x) \delta p_{b}(y)} W[v,a,s,p] \right\rvert_{v=a=p=0,s=\textrm{diag}(m_{u}, m_{d}, m_{s})}.
$$

The invariance of the generating functional constrains the transformation properties of the external fields
which in turn will give rise to the master equation by considering
the difference between the functional and its infinitesimally transformed counterpart.
We require of the generating functional that it is

- Hermitian,
- Lorentz scalar,
- even under parity $P$ and charge conjugation $C$ (which implies it is even under time-reversal as well),
- and invariant under infinitesimal local $\suxsuxu$ transformations.

Since the quark fields transform as

$$
q_{f}(t, \vec{x}) \xrightarrow[]{P} \gamma_0 q_{f}(t, -\vec{x})
$$

under parity and the Lagrangian must be invariant, we see that our fields must transform as

\begin{align*}
v^{\mu} &\xrightarrow[]{P} v_{\mu}, \\
v^{\mu}_{(s)} &\xrightarrow[]{P} v^{(s)}_{\mu}, \\
a^{\mu} &\xrightarrow[]{P} - a_{\mu}, \\
s &\xrightarrow[]{P} s, \\
p &\xrightarrow[]{P} -p,
\end{align*}

under parity.
Looking at charge conjugation, we find the quark fields transform as

\begin{align*}
q_{\alpha,f} & \xrightarrow[]{C} C_{\alpha \beta} \bar{q}_{\beta,f}, \\
\bar{q}_{\alpha,f} & \xrightarrow[]{C} - q_{\beta,f} C^{-1}_{\beta\alpha},
\end{align*}

where $C=i\gamma^2 \gamma^0$ is a Dirac-space matrix,
and as a result our external fields must transform as

\begin{align*}
v_{\mu} &\xrightarrow[]{C} -v^{T}_{\mu}, \\
v_{\mu}^{(s)} &\xrightarrow[]{C} -v^{(s)T}_{\mu}, \\
a_{\mu} &\xrightarrow[]{C} a^{T}_{\mu}, \\
s &\xrightarrow[]{C} s^{T}, \\
p &\xrightarrow[]{C} p^{T},
\end{align*}

under charge conjugation.

Finally, to see how the external fields must transform under local $\suxsuxu$ transformations,
we split $\lext$ into right-handed and left-handed blocks:

\begin{equation}
\lext = \bar{q}_{L} \gamma^{\mu}\left(l_{\mu} + \frac{1}{3} v^{(s)}_{\mu} \right) q_{L}
+ \bar{q}_{R} \gamma^{\mu}\left(r_{\mu} + \frac{1}{3} v^{(s)}_{\mu} \right) q_{R}
- \bar{q}_{R} (s + i p) q_{L} - \bar{q}_{L} (s - i p) q_{R}.
\end{equation}

The transformations we are interested in are of the form:

\begin{align}
q_{R} \rightarrow \exp{-i\frac{\Theta(x)}{3}} V_{R}(x) q_{R}, \\
q_{L} \rightarrow \exp{-i\frac{\Theta(x)}{3}} V_{L}(x) q_{L},
\end{align}

where $V_{R}$ and $V_{L}$ are independent SU(3) matrices corresponding to the right-handed and left-handed transformations.
$\Theta$ is the transformation parameter for the singlet vector transformation,
which involves a transformation of all left-handed and right-handed fields by the same phase.

Demanding the invariance of $\mathcal{L}$ (which means the generating functional is invariant as well) under such transformations requires our external fields to transform like:

\begin{align}
r_{\mu} \rightarrow V_{R} r_{\mu} V_{R}^{\dagger} + i V_{R} \dmulop{V_{R}^{\dagger}}, \\
l_{\mu} \rightarrow V_{L} l_{\mu} V_{L}^{\dagger} + i V_{L} \dmulop{V_{L}^{\dagger}}, \\
v_{\mu}^{(s)} \rightarrow v_{\mu}^{(s)} - \dmulop{\Theta}, \\
s + ip \rightarrow V_{R} (s + ip) V_{L}^{\dagger}, \\
s - ip \rightarrow V_{L} (s - ip) V_{R}^{\dagger}.
\end{align}

The derivation of a general master equation is too involved for these notes.
However, this is a good point to work from when developing a Lagrangian for an effective theory.

# Key takeaways

**TODO**

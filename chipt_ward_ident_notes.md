---
author: Matthias Heinz
title: Notes on Ward identities in chiral perturbation theory
include-before-body: |
  \newcommand{\U}[1]{\textrm{U}(#1)}
  \newcommand{\Phidag}{\Phi^{\dagger}}
  \newcommand{\dmulo}[1]{\partial_{\mu}#1}
  \newcommand{\dmuhi}[1]{\partial^{\mu}#1}
  \newcommand{\dmulop}[1]{(\partial_{\mu}#1)}
  \newcommand{\dmuhip}[1]{(\partial^{\mu}#1)}
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
This means symmetries of the relevant theory that constrain scattering amplitudes
also constrain Green's functions.
Additionally, these symmetries also provide constraints *among* Green's functions,
by considering, for example, the divergence of some Green's function.
These relations are known as Ward-Fradkin-Takahashi identities,
which we will just refer to in short as Ward identities.

**Our goal in these notes is to understand how these Ward identities can be derived in general
(focusing on an approach within the path integral formalism)
and to see what Ward identities look like in QCD near the chiral limit.**

# Ward identities in a simple $\U{1}$ example

For our simple example, we consider a simple scalar field theory with two real scalar fields
($\Phi_1$ and $\Phi_2$)
with a global $\U{1}$ symmetry:

\begin{equation}
\mathcal{L} = \frac{1}{2}(\dmulop{\Phidag}\dmuhip{\Phi})
- \frac{m^2}{2} \Phidag \Phi - \frac{\lambda}{2} (\Phidag \Phi)^2,
\end{equation}

with

\begin{align*}
  \Phi(x)& = \frac{1}{\sqrt{2}}(\Phi_1(x) + i \Phi_2(x)), \\
  \Phidag(x)& = \frac{1}{\sqrt{2}}(\Phi_1(x) - i \Phi_2(x)).
\end{align*}

## Things left to do:

- Define rigid rotation transformation and define current
- Define $G$ and give Ward identity
- Define generating functional
- Give how external sources must transform under local $\U{1}$ transformation of fields
- Generating functional is invariant under local transformation
- Derive master equation
- Use master equation to derive Ward identity above

# Chiral Green's functions

## Things left to do:

- Introduce color neutral fields
- Write out example Green's functions
- Give intuitive interpretation for what these Green's functions are related to
- Example Green's function and result for divergence

# Chiral Ward identities via the current algebra

## Things left to do:

- Recap current algebra
- Show how naive application of current algebra can lead to wrong results
- Explain Schwinger term solution
- Feynman postulate that Schwinger terms and effects of covariant time time-ordering product cancel
  giving expected commutation relations

# Chiral Ward identities from the generating functional

## Things left to do:

- Introduce Lagrangian with external fields
- Motivate external fields as conserved currents of global symmetry
- Determine form of external fields by demanding invariances of Lagrangian
  - Hermitian
  - Lorentz scalar
  - Even under P, C, and T
  - Invariant under local chiral transformations
- List how external fields must transform under chiral transformations
- Give one concrete example

# Key takeaways

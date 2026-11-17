= KO assignment and pathway reconstruction

Protein sequences were annotated using BlastKOALA (`refprok.pep`), and the resulting KEGG Orthology (KO) identifiers were mapped with KEGG Mapper–Reconstruct. Four datasets were analysed separately, covering both microorganisms under oleate and stearate conditions. KO assignments were matched to UniProt annotations, normalised Spectrum Counting values and PeptideShaker validation status.

Relative abundances were calculated independently for each condition after removing cRAP contaminants, using both microorganisms in each sample denominator. Distinct KOs were counted once per pathway, while abundance contributions were calculated from unique protein accessions. Reported proteins with zero Spectrum Counting were distinguished from non-detected proteins.

== Functional interpretation

Both oleate and stearate are long-chain fatty acids; oleate is unsaturated, whereas stearate is saturated. Fatty-acid degradation is therefore expected under both conditions. In the expected syntrophic process, *S. zehnderi* degrades these substrates through acetyl-CoA intermediates, ultimately producing acetate and hydrogen. *M. formicicum* consumes hydrogen to reduce carbon dioxide to methane. The main expected end products of this two-organism culture are consequently *acetate and methane*, with hydrogen linking the organisms (#link("https://doi.org/10.1099/ijs.0.64734-0")[Sousa et al., 2007]). These products were not measured in the present proteomics analysis.

Oleate showed broader KO coverage: *M. formicicum* had 39 distinct KOs versus 21 in stearate, while *S. zehnderi* had 11 versus three. However, 38 microbial proteins were classified as Confident in oleate and only one in stearate. Three selected components illustrate the metabolic roles supported by the data, while this unequal identification confidence limits substrate comparisons.

=== Bacterial fatty-acid degradation

Oleate contained a Confident *S. zehnderi* thiolase (K00632), contributing 1.54% of total microbial Spectrum Counting signal. Thiolase cleaves a 3-oxoacyl-CoA with coenzyme A, releasing acetyl-CoA and an acyl-CoA shortened by two carbon atoms (#link("https://www.kegg.jp/entry/2.3.1.16")[EC 2.3.1.16]). This thiolytic step supports a role in beta-oxidation. It produces acetyl-CoA, not acetate directly; further reactions are required to form acetate.

In @fig:fatty, the green thiolase boxes mark this reaction at several chain lengths, all arising from the same detected KO. They do not establish a complete beta-oxidation pathway. Thiolase was not reported in stearate, but its non-detection does not establish biological absence. Its detection in oleate is biologically consistent with fatty-acid degradation, a function also expected with stearate.

#figure(
  image("figures/oleate_synt_map00071_map.jpg", width: 90%),
  caption: [
    Fatty-acid degradation reconstruction for oleate
    #emph[S. zehnderi] (map00071). Green EC 2.3.1.16
    boxes correspond to the single detected thiolase KO
    K00632 at multiple chain-length steps leading to
    acetyl-CoA. Uncoloured reactions provide reference
    context and were not matched in this reconstruction.
    The map does not demonstrate acetate production or
    a complete pathway. Source: KEGG Mapper;
    © Kanehisa Laboratories.
  ],
) <fig:fatty>

=== Archaeal hydrogen use and methane formation

For *M. formicicum*, methane metabolism (map00680) contained 16 distinct KO matches in oleate and 12 in stearate, including 11 and one supported by Confident proteins, respectively.

F420-reducing hydrogenase couples hydrogen oxidation to the reduction of coenzyme F420, providing reducing power for methanogenesis (#link("https://www.kegg.jp/entry/R03025")[reaction R03025]). Its detected alpha, beta and gamma subunits contributed 5.36% combined in oleate and were Confident. In stearate, these subunits were reported as Doubtful with zero Spectrum Counting.

Methyl-coenzyme M reductase (MCR) catalyses the methane-forming step: methyl-coenzyme M reacts with coenzyme B to produce methane and the CoM–CoB heterodisulfide (#link("https://www.kegg.jp/entry/R04541")[reaction R04541]). The detected alpha subunit (K00399) belongs to this enzyme complex and does not perform the complete reaction alone. It was Confident in both conditions, contributing 7.90% in oleate and 28.47% in stearate. The larger relative contribution in stearate does not establish greater methane production.

#figure(
  image("figures/met_comparison_map00680_map.jpg", width: 90%),
  caption: [
    Methane-metabolism reconstruction for
    #emph[M. formicicum] (map00680). F420 hydrogenase
    corresponds to EC 1.12.98.1; MCR corresponds to
    EC 2.8.4.1, linked to methane near the top of the map.
    Green: oleate-only matches; pink: stearate-only
    matches; blue: shared mapped objects. Colours
    indicate correspondence, not abundance, confidence
    or activity. The reference map contains alternative
    routes that are not all established in this organism.
    Source: KEGG Mapper; © Kanehisa Laboratories.
  ],
) <fig:methane>

#figure(
  table(
    columns: (2.9fr, 1fr, 1fr),
    inset: 4pt,
    align: (left, center, center),
    stroke: none,
    table.hline(),
    [*Functional component*], [*Oleate (%)*], [*Stearate (%)*],
    table.hline(),
    [Thiolase (K00632)], [1.54 C], [ND],
    [F420 hydrogenase, alpha/beta/gamma], [5.36 C], [0.00 D],
    [MCR alpha (K00399)], [7.90 C], [28.47 C],
    table.hline(),
  ),
  caption: [
    Selected protein contributions to total microbial
    Spectrum Counting signal. C = Confident;
    D = Doubtful; ND = not detected.
    Hydrogenase values sum three subunits.
    Zero denotes reported entries with zero Spectrum Counting.
  ],
) <tab:functional>

=== Syntrophy and substrate comparison

The two maps show complementary parts of the expected process: bacterial fatty-acid breakdown generates acetyl-CoA, while archaeal hydrogen utilisation supports methane formation. The connection between them is hydrogen transfer; neither map alone demonstrates that exchange. Acetate remains an expected end product of the described co-culture rather than being assumed to undergo conversion to methane by the hydrogen-consuming partner.

Oleate provides broader and more confidently identified functional evidence. However, these components are also relevant to stearate metabolism and do not identify a mechanism specific to oleate's double bond. Weak stearate identifications prevent attributing the observed differences to substrate saturation. The data therefore support partial metabolic functions consistent with syntrophy, but do not establish complete pathways, substrate-dependent regulation, hydrogen transfer or differences in acetate and methane production.

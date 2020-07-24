/*
 ============================================================================
 Name        : adjacency.cu
 Author      : Jesse Harder
 Supervisor	 : Dr. Christopher Henry, P. Eng.
 Date		 : August 23, 2016
 Version     : V 1.0
 Description : This program will create an adjacency matrix
 	 	 	 	 for two provided files of vectors
 License	 : Licensed under the Non-Profit Open Software License version 3.0
 1) Grant of Copyright License. Licensor grants You a worldwide, royalty-free,
 non-exclusive, sublicensable license, for the duration of the copyright, to do the following:

 a) to reproduce the Original Work in copies, either alone or as part of a collective work;

 b) to translate, adapt, alter, transform, modify, or arrange the Original Work, thereby
 creating derivative works ("Derivative Works") based upon the Original Work;

 c) to distribute or communicate copies of the Original Work and Derivative Works
 to the public, with the proviso that copies of Original Work or Derivative Works
 that You distribute or communicate shall be licensed under this Non-Profit Open Software
 License or as provided in section 17(d);

 d) to perform the Original Work publicly; and

 e) to display the Original Work publicly.

 2) Grant of Patent License. Licensor grants You a worldwide, royalty-free,
 non-exclusive, sublicensable license, under patent claims owned or controlled by
  the Licensor that are embodied in the Original Work as furnished by the Licensor,
  for the duration of the patents, to make, use, sell, offer for sale, have made,
   and import the Original Work and Derivative Works.

 3) Grant of Source Code License. The term "Source Code" means the preferred
 form of the Original Work for making modifications to it and all available
 documentation describing how to modify the Original Work. Licensor agrees to
 provide a machine-readable copy of the Source Code of the Original Work along
 with each copy of the Original Work that Licensor distributes. Licensor reserves
 the right to satisfy this obligation by placing a machine-readable copy of the
 Source Code in an information repository reasonably calculated to permit
 inexpensive and convenient access by You for as long as Licensor continues
 to distribute the Original Work.

 4) Exclusions From License Grant. Neither the names of Licensor, nor the names
 of any contributors to the Original Work, nor any of their trademarks or service
 marks, may be used to endorse or promote products derived from this Original Work
 without express prior permission of the Licensor. Except as expressly stated
  herein, nothing in this License grants any license to Licensor's trademarks,
  copyrights, patents, trade secrets or any other intellectual property. No patent
  license is granted to make, use, sell, offer for sale, have made, or import embodiments
  of any patent claims other than the licensed claims defined in Section 2. No license
 is granted to the trademarks of Licensor even if such marks are included in the Original
  Work. Nothing in this License shall be interpreted to prohibit Licensor from licensing
  under terms different from this License any Original Work that Licensor otherwise would
  have a right to license.

 5) External Deployment. The term "External Deployment" means the use, distribution, or
 communication of the Original Work or Derivative Works in any way such that the Original
 Work or Derivative Works may be used by anyone other than You, whether those works are
 distributed or communicated to those persons or made available as an application intended
 for use over a network. As an express condition for the grants of license hereunder,
 You must treat any External Deployment by You of the Original Work or a Derivative
 Work as a distribution under section 1(c).

 6) Attribution Rights. You must retain, in the Source Code of any Derivative Works
 that You create, all copyright, patent, or trademark notices from the Source Code of
 the Original Work, as well as any notices of licensing and any descriptive text
 identified therein as an "Attribution Notice." You must cause the Source Code for
 any Derivative Works that You create to carry a prominent Attribution Notice reasonably
 calculated to inform recipients that You have modified the Original Work.

 7) Warranty of Provenance and Disclaimer of Warranty. The Original Work is provided
 under this License on an "AS IS" BASIS and WITHOUT WARRANTY, either express or implied,
 including, without limitation, the warranties of non-infringement, merchantability or
 fitness for a particular purpose. THE ENTIRE RISK AS TO THE QUALITY OF THE ORIGINAL WORK
 IS WITH YOU. This DISCLAIMER OF WARRANTY constitutes an essential part of this License.
 No license to the Original Work is granted by this License except under this disclaimer.

 8) Limitation of Liability. Under no circumstances and under no legal theory, whether
 in tort (including negligence), contract, or otherwise, shall the Licensor be liable
 to anyone for any direct, indirect, special, incidental, or consequential damages of
 any character arising as a result of this License or the use of the Original Work
 including, without limitation, damages for loss of goodwill, work stoppage, computer
 failure or malfunction, or any and all other commercial damages or losses. This limitation
 of liability shall not apply to the extent applicable law prohibits such limitation.

 9) Acceptance and Termination. If, at any time, You expressly assented to this License,
 that assent indicates your clear and irrevocable acceptance of this License and all of
 its terms and conditions. If You distribute or communicate copies of the Original Work
 or a Derivative Work, You must make a reasonable effort under the circumstances to obtain
 the express assent of recipients to the terms of this License. This License conditions
 your rights to undertake the activities listed in Section 1, including your right to create
 Derivative Works based upon the Original Work, and doing so without honoring these terms and
 conditions is prohibited by copyright law and international treaty. Nothing in this License
 is intended to affect copyright exceptions and limitations (including "fair use" or "fair
 dealing"). This License shall terminate immediately and You may no longer exercise any of
 the rights granted to You by this License upon your failure to honor the conditions in Section 1(c).

 10) Termination for Patent Action. This License shall terminate automatically and You
 may no longer exercise any of the rights granted to You by this License as of the date
 You commence an action, including a cross-claim or counterclaim, against Licensor or any
 licensee alleging that the Original Work infringes a patent. This termination provision
 shall not apply for an action alleging patent infringement by combinations of the Original
  Work with other software or hardware.

 11) Jurisdiction, Venue and Governing Law. Any action or suit relating to this License
 may be brought only in the courts of a jurisdiction wherein the Licensor resides or in
 which Licensor conducts its primary business, and under the laws of that jurisdiction
 excluding its conflict-of-law provisions. The application of the United Nations Convention
 on Contracts for the International Sale of Goods is expressly excluded. Any use of the Original
 Work outside the scope of this License or after its termination shall be subject to the
 requirements and penalties of copyright or patent law in the appropriate jurisdiction.
 This section shall survive the termination of this License.

 12) Attorneys' Fees. In any action to enforce the terms of this License or seeking
 damages relating thereto, the prevailing party shall be entitled to recover its costs and
 expenses, including, without limitation, reasonable attorneys' fees and costs incurred in
 connection with such action, including any appeal of such action. This section shall survive
 the termination of this License.

 13) Miscellaneous. If any provision of this License is held to be unenforceable, such provision
 shall be reformed only to the extent necessary to make it enforceable.

 14) Definition of "You" in This License. "You" throughout this License, whether in upper or
 lower case, means an individual or a legal entity exercising rights under, and complying with
 all of the terms of, this License. For legal entities, "You" includes any entity that controls,
 is controlled by, or is under common control with you. For purposes of this definition, "control"
 means (i) the power, direct or indirect, to cause the direction or management of such entity,
 whether by contract or otherwise, or (ii) ownership of fifty percent (50%) or more of the outstanding
 shares, or (iii) beneficial ownership of such entity.

 15) Right to Use. You may use the Original Work in all ways not otherwise restricted or conditioned
  by this License or by law, and Licensor promises not to interfere with or be responsible for such uses by You.

 16) Modification of This License. This License is Copyright © 2005 Lawrence Rosen.
 Permission is granted to copy, distribute, or communicate this License without modification.
 Nothing in this License permits You to modify this License as applied to the Original Work or to
 Derivative Works. However, You may modify the text of this License and copy, distribute or communicate
 your modified version (the "Modified License") and apply it to other original works of authorship
 subject to the following conditions: (i) You may not indicate in any way that your Modified License
 is the "Open Software License" or "OSL" and you may not use those names in the name of your Modified
 License; (ii) You must replace the notice specified in the first paragraph above with the notice
 "Licensed under <insert your license name here>" or with a notice of your own that is not confusingly
 similar to the notice in this License; and (iii) You may not claim that your original works are open
 source software unless your Modified License has been approved by Open Source Initiative (OSI) and
 You comply with its license review and certification process.

 17) Non-Profit Amendment. The name of this amended version of the Open Software License ("OSL 3.0")
 is "Non-Profit Open Software License 3.0". The original OSL 3.0 license has been amended as follows:

 (a) Licensor represents and declares that it is a not-for-profit organization that derives no revenue
 whatsoever from the distribution of the Original Work or Derivative Works thereof, or from support
 or services relating thereto.

 (b) The first sentence of Section 7 ["Warranty of Provenance"] of OSL 3.0 has been stricken. For
 Original Works licensed under this Non-Profit OSL 3.0, LICENSOR OFFERS NO WARRANTIES WHATSOEVER.

 (c) In the first sentence of Section 8 ["Limitation of Liability"] of this Non-Profit OSL 3.0,
 the list of damages for which LIABILITY IS LIMITED now includes "direct" damages.

 (d) The proviso in Section 1(c) of this License now refers to this "Non-Profit Open Software
 License" rather than the "Open Software License". You may distribute or communicate the Original
 Work or Derivative Works thereof under this Non-Profit OSL 3.0 license only if You make the
 representation and declaration in paragraph (a) of this Section 17. Otherwise, You shall distribute or
 communicate the Original Work or Derivative Works thereof only under the OSL 3.0 license and You shall
 publish clear licensing notices so stating. Also by way of clarification, this License does not authorize
 You to distribute or communicate works under this Non-Profit OSL 3.0 if You received them under
 the original OSL 3.0 license.

 (e) Original Works licensed under this license shall reference "Non-Profit OSL 3.0"
 in licensing notices to distinguish them from works licensed under the original OSL 3.0 license.
 ============================================================================
 */

#include <iostream>
#include <stdlib.h>
#include <vector>		//Provides access to vector object, for flexibly sized arrays
#include <fstream>		//Read input and write output files
#include <string>		//Provides string object
#include <sstream>		//Provides methods for working with strings

float EPSILON = 0.4;

//Write the boolean adjacency matrix to an output file, adjMatrix.txt
void writeToFile(bool* adjMatrix, unsigned totalVectors){

	std::cout << "Writing to adjMatrix.txt ... ";
	//Write output of final intersection to file
	std::ofstream out("adjMatrix.txt");

	unsigned totalValues = totalVectors * totalVectors;

	//Each output row represents one vector's adjacency values
	//ie: all 1's in row 0 represent sets adjacent to set 0
	for(unsigned i = 0; i < totalValues; ++i){
		if(i > 0 && i % totalVectors == 0)
			out << std::endl;
		out << adjMatrix[i];
	}

	std::cout << "Finished." << std::endl;
}

int main(int argc, const char ** argv) {
	unsigned setSize = 0;
	unsigned vectorSize = 0;
	unsigned setCount = 0;

	//This section of code deals with input parameters from the command line


	//Store list of input files
	std::vector<std::string> fileName;

	//Set option values for each parameter entered
	for (unsigned i = 0; i < argc; ++i) {
		if (argv[i] == std::string("-o")) {
			//Declare the size of the feature vectors
			std::stringstream convert(argv[i + 1]);
			convert >> vectorSize;
			i++;

		}else if (argv[i] == std::string("-e")) {
			std::stringstream convert(argv[i + 1]);
			convert >> EPSILON;
			i++;

		}else if (argv[i] == std::string("-f")) {
			//Push all files after -f into fileName vector
			for (unsigned j = i + 1; j < argc; ++j) {
				fileName.push_back(argv[j]);

			}
			break;
		} else if (i > 0) {
			std::cout << "Unknown parameter " << argv[i] << "." << std::endl;
		}
	}

	//Check for valid vector size
	if (vectorSize < 1) {
		std::cerr
				<< "The number of elements in each feature vector must be > 0. Set this with the -o parameter.\n";
		exit(1);
	}

	if(fileName.size() == 0){
		fileName.push_back("data/objectDescriptions0.txt");
		fileName.push_back("data/objectDescriptions1.txt");
	}


	//Read in the data

	//Total number of elements across all Fundamental Subsets, does not include the Count attribute
	unsigned totalSize = 0;
	setCount = fileName.size();
	std::fstream myfile(fileName[0].c_str(), std::ios_base::in);
	double fileElement;

	//Get size of file
	while (myfile >> fileElement) {
		totalSize++;
	}

	myfile.close();
	//Get total size of all files combined
	totalSize *= setCount;

	//Number of Feature Vectors in each Fundamental Subset
	setSize = (totalSize / vectorSize) / setCount;
	unsigned totalVectors = setSize * setCount;
	double *data = new double[setSize * vectorSize * setCount];

	//Fill in array (adjMatrix) with values from input files
	for (unsigned i = 0; i < setCount; ++i) {
		unsigned z = 0;
		unsigned setIndex = i * vectorSize * setSize;
		std::fstream inputFile(fileName[i].c_str(), std::ios_base::in);
		std::cout << "Reading from " << fileName[i].c_str() << "..." << std::endl;
		while (inputFile >> fileElement) {
			data[z + setIndex] = fileElement;
			z++;
		}
		z = 0;
	}

	//Square epsilon
	EPSILON = EPSILON * EPSILON;
	//Declare array to store output
	bool* adjMatrix = new bool[totalVectors*totalVectors];
	for(unsigned i = 0; i < totalVectors*totalVectors; ++i){
		adjMatrix[i] = 0;

	}

	std::cout << "Creating adjacency matrix..." << std::endl;
	//Compare each vector with each other vector, to see if euclidDistance is less than epsilon
	for(unsigned i = 0; i < totalVectors; ++i){
		for(unsigned j = 0; j < totalVectors; ++j){
			double euclidDistance = 0;
			//Adjacency matrix is mirrored along the diagonal, so [j][i] = [i][j]
			if(j < i){
				adjMatrix[i * totalVectors + j] = adjMatrix[j * totalVectors + i];
				continue;
			}else{
				for(unsigned k = 0; k < vectorSize; ++k){

					euclidDistance += powf(data[i * vectorSize + k] - data[j * vectorSize + k], 2);

				}
				if(euclidDistance <= EPSILON && i != j){
					adjMatrix[i * totalVectors + j] = true;
				}
			}
		}
	}

	//Write the matrix to a text file
	writeToFile(adjMatrix, totalVectors);

	/* Free memory */
	free(adjMatrix);
	free(data);

	std::cout << "Job's done." << std::endl;
	return 0;
}

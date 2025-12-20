@CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_22_badGlobal = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_165ed:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_16627, label %dec_label_pc_1661d

dec_label_pc_1661d:                               ; preds = %dec_label_pc_165ed
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16627:                               ; preds = %dec_label_pc_165ed
  %4 = bitcast ptr %1 to ptr
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_22_badGlobal, align 4
  %5 = call ptr @anon1(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call ptr @strcpy(ptr nonnull %6, ptr %5)
  call void @printLine(ptr %5)
  %8 = bitcast ptr %5 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_166b7, label %dec_label_pc_166b2

dec_label_pc_166b2:                               ; preds = %dec_label_pc_16627
  call void @__stack_chk_fail()
  br label %dec_label_pc_166b7

dec_label_pc_166b7:                               ; preds = %dec_label_pc_166b2, %dec_label_pc_16627
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_16870:
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_src_char_cpy_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_168ab, label %dec_label_pc_1688a

dec_label_pc_1688a:                               ; preds = %dec_label_pc_16870
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_168ab

dec_label_pc_168ab:                               ; preds = %dec_label_pc_1688a, %dec_label_pc_16870
  ret ptr %data
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


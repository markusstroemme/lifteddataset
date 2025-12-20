@CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_45_badData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_63954:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_45_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = inttoptr i64 %1 to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_639d2, label %dec_label_pc_639cd

dec_label_pc_639cd:                               ; preds = %dec_label_pc_63954
  call void @__stack_chk_fail()
  br label %dec_label_pc_639d2

dec_label_pc_639d2:                               ; preds = %dec_label_pc_639cd, %dec_label_pc_63954
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_639d4:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_63a07, label %dec_label_pc_639fd

dec_label_pc_639fd:                               ; preds = %dec_label_pc_639d4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_63a07:                               ; preds = %dec_label_pc_639d4
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE193_char_cpy_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


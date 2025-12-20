@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memmove_45_badData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_21106:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memmove_45_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  call void @free(ptr %3)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_21196, label %dec_label_pc_21191

dec_label_pc_21191:                               ; preds = %dec_label_pc_21106
  call void @__stack_chk_fail()
  br label %dec_label_pc_21196

dec_label_pc_21196:                               ; preds = %dec_label_pc_21191, %dec_label_pc_21106
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_21198:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_211cb, label %dec_label_pc_211c1

dec_label_pc_211c1:                               ; preds = %dec_label_pc_21198
  call void @exit(i32 -1)
  unreachable

dec_label_pc_211cb:                               ; preds = %dec_label_pc_21198
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  store i64 %4, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memmove_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_68_goodG2BData = external local_unnamed_addr global i64
@global_var_79aca = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d3a0:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_d3d3, label %dec_label_pc_d3c9

dec_label_pc_d3c9:                                ; preds = %dec_label_pc_d3a0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d3d3:                                ; preds = %dec_label_pc_d3a0
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  store i64 %4, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_68_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_d49a:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_snprintf_68_goodG2BData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %3, i32 100, ptr @global_var_79aca, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %3)
  %5 = inttoptr i64 %1 to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_d52b, label %dec_label_pc_d526

dec_label_pc_d526:                                ; preds = %dec_label_pc_d49a
  call void @__stack_chk_fail()
  br label %dec_label_pc_d52b

dec_label_pc_d52b:                                ; preds = %dec_label_pc_d526, %dec_label_pc_d49a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_79ff5 = external constant [21 x i8]
@global_var_7c820 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_26722:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_goodG2B1Global, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_267d4, label %dec_label_pc_267cf

dec_label_pc_267cf:                               ; preds = %dec_label_pc_26722
  call void @__stack_chk_fail()
  br label %dec_label_pc_267d4

dec_label_pc_267d4:                               ; preds = %dec_label_pc_267cf, %dec_label_pc_26722
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_268e8:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26913, label %dec_label_pc_26902

dec_label_pc_26902:                               ; preds = %dec_label_pc_268e8
  call void @printLine(ptr @global_var_79ff5)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_26932

dec_label_pc_26913:                               ; preds = %dec_label_pc_268e8
  %2 = call ptr @malloc(i32 400)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_26932, label %dec_label_pc_26928

dec_label_pc_26928:                               ; preds = %dec_label_pc_26913
  call void @exit(i32 -1)
  unreachable

dec_label_pc_26932:                               ; preds = %dec_label_pc_26913, %dec_label_pc_26902
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_badGlobal = external local_unnamed_addr global i32
@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2666e:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_badGlobal, align 4
  %1 = call ptr @anon1(ptr null)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_26720, label %dec_label_pc_2671b

dec_label_pc_2671b:                               ; preds = %dec_label_pc_2666e
  call void @__stack_chk_fail()
  br label %dec_label_pc_26720

dec_label_pc_26720:                               ; preds = %dec_label_pc_2671b, %dec_label_pc_2666e
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_268a9:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_268e2, label %dec_label_pc_268c3

dec_label_pc_268c3:                               ; preds = %dec_label_pc_268a9
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_268e2, label %dec_label_pc_268d8

dec_label_pc_268d8:                               ; preds = %dec_label_pc_268c3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_268e2:                               ; preds = %dec_label_pc_268c3, %dec_label_pc_268a9
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


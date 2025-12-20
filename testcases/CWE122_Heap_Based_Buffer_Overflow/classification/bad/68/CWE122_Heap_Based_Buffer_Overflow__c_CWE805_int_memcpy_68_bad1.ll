@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_68_badData = external local_unnamed_addr global ptr
@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_28aca:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_28afd, label %dec_label_pc_28af3

dec_label_pc_28af3:                               ; preds = %dec_label_pc_28aca
  call void @exit(i32 -1)
  unreachable

dec_label_pc_28afd:                               ; preds = %dec_label_pc_28aca
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_28b75:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_68_badData, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_memcpy_68_badData, align 8
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_28c0a, label %dec_label_pc_28c05

dec_label_pc_28c05:                               ; preds = %dec_label_pc_28b75
  call void @__stack_chk_fail()
  br label %dec_label_pc_28c0a

dec_label_pc_28c0a:                               ; preds = %dec_label_pc_28c05, %dec_label_pc_28b75
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


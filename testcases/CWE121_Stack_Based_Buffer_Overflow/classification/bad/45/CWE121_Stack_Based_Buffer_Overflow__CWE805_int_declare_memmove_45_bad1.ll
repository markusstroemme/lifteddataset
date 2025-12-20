@CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_memmove_45_badData = external local_unnamed_addr global ptr
@global_var_bb9a8 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5d1ab:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_memmove_45_badData, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_memmove_45_badData, align 8
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5d231, label %dec_label_pc_5d22c

dec_label_pc_5d22c:                               ; preds = %dec_label_pc_5d1ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d231

dec_label_pc_5d231:                               ; preds = %dec_label_pc_5d22c, %dec_label_pc_5d1ab
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5d233:
  %dataBadBuffer_-432 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-424 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-432, align 8
  %4 = bitcast ptr %dataBadBuffer_-432 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_memmove_45_badData, align 8
  call void @anon1()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5d28c, label %dec_label_pc_5d287

dec_label_pc_5d287:                               ; preds = %dec_label_pc_5d233
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d28c

dec_label_pc_5d28c:                               ; preds = %dec_label_pc_5d287, %dec_label_pc_5d233
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


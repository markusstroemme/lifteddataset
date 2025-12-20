@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE131_memmove_68_badData = external local_unnamed_addr global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5b74e:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-24 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5b79f

dec_label_pc_5b79f:                               ; preds = %dec_label_pc_5b79f, %dec_label_pc_5b74e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5b7b6, label %dec_label_pc_5b79f

dec_label_pc_5b7b6:                               ; preds = %dec_label_pc_5b79f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  store i64 %5, ptr %stack_var_-24, align 8
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_memmove_68_badData, align 8
  call void @anon1()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_5b81d, label %dec_label_pc_5b818

dec_label_pc_5b818:                               ; preds = %dec_label_pc_5b7b6
  call void @__stack_chk_fail()
  br label %dec_label_pc_5b81d

dec_label_pc_5b81d:                               ; preds = %dec_label_pc_5b818, %dec_label_pc_5b7b6
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5b905:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_memmove_68_badData, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %1 to ptr
  %3 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-56, i32 40)
  %4 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_memmove_68_badData, align 8
  call void @printIntLine(i32 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_5b98d, label %dec_label_pc_5b988

dec_label_pc_5b988:                               ; preds = %dec_label_pc_5b905
  call void @__stack_chk_fail()
  br label %dec_label_pc_5b98d

dec_label_pc_5b98d:                               ; preds = %dec_label_pc_5b988, %dec_label_pc_5b905
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


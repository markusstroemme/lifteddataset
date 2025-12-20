@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_3cac8 = external global i64
@0 = external global i32
@global_var_1000 = external global i32
@global_var_3c910 = external global %vtable_3c910_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22fd5:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_23021

dec_label_pc_23021:                               ; preds = %dec_label_pc_23021, %dec_label_pc_22fd5
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_23038, label %dec_label_pc_23021

dec_label_pc_23038:                               ; preds = %dec_label_pc_23021
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_230a5

dec_label_pc_230a5:                               ; preds = %dec_label_pc_230a5, %dec_label_pc_23038
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_230bc, label %dec_label_pc_230a5

dec_label_pc_230bc:                               ; preds = %dec_label_pc_230a5
  %8 = call i64 @_Znwm(i64 8)
  %9 = inttoptr i64 %8 to ptr
  call void @anon1(ptr %9)
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %dec_label_pc_2314a, label %dec_label_pc_2313d

dec_label_pc_2313d:                               ; preds = %dec_label_pc_230bc
  %11 = call i64 @_ZdlPvm(ptr %9, i64 8)
  br label %dec_label_pc_2314a

dec_label_pc_2314a:                               ; preds = %dec_label_pc_2313d, %dec_label_pc_230bc
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2315f, label %dec_label_pc_2315a

dec_label_pc_2315a:                               ; preds = %dec_label_pc_2314a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2315f

dec_label_pc_2315f:                               ; preds = %dec_label_pc_2315a, %dec_label_pc_2314a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_23176:
  store i64 ptrtoint (ptr @global_var_3cac8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_231c2:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_3c910 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


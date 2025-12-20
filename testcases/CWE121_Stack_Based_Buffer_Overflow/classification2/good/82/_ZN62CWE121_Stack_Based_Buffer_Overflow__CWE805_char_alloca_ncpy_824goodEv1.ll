@global_var_1000 = external global ptr
@global_var_9e8e8 = external global i64
@0 = external global i32
@global_var_fff = external global i32
@global_var_9e3b0 = external global %vtable_9e3b0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6540e:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_65458

dec_label_pc_65458:                               ; preds = %dec_label_pc_65458, %dec_label_pc_6540e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6546f, label %dec_label_pc_65458

dec_label_pc_6546f:                               ; preds = %dec_label_pc_65458
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_654da

dec_label_pc_654da:                               ; preds = %dec_label_pc_654da, %dec_label_pc_6546f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_654f1, label %dec_label_pc_654da

dec_label_pc_654f1:                               ; preds = %dec_label_pc_654da
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call i64 @_Znwm(i64 8)
  %11 = inttoptr i64 %10 to ptr
  call void @anon1(ptr %11)
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %dec_label_pc_65586, label %dec_label_pc_65579

dec_label_pc_65579:                               ; preds = %dec_label_pc_654f1
  %13 = call i64 @_ZdlPvm(ptr %11, i64 8)
  br label %dec_label_pc_65586

dec_label_pc_65586:                               ; preds = %dec_label_pc_65579, %dec_label_pc_654f1
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_6559b, label %dec_label_pc_65596

dec_label_pc_65596:                               ; preds = %dec_label_pc_65586
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6559b

dec_label_pc_6559b:                               ; preds = %dec_label_pc_65596, %dec_label_pc_65586
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_655b2:
  store i64 ptrtoint (ptr @global_var_9e8e8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_655fe:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_9e3b0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_1000 = external global ptr
@global_var_eebf8 = external global i64
@0 = external global i32
@global_var_fff = external global i32
@global_var_ee420 = external global %vtable_ee420_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_a049e:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_a04e8

dec_label_pc_a04e8:                               ; preds = %dec_label_pc_a04e8, %dec_label_pc_a049e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_a04ff, label %dec_label_pc_a04e8

dec_label_pc_a04ff:                               ; preds = %dec_label_pc_a04e8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_a056a

dec_label_pc_a056a:                               ; preds = %dec_label_pc_a056a, %dec_label_pc_a04ff
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_a0581, label %dec_label_pc_a056a

dec_label_pc_a0581:                               ; preds = %dec_label_pc_a056a
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
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
  br i1 %12, label %dec_label_pc_a0616, label %dec_label_pc_a0609

dec_label_pc_a0609:                               ; preds = %dec_label_pc_a0581
  %13 = call i64 @_ZdlPvm(ptr %11, i64 8)
  br label %dec_label_pc_a0616

dec_label_pc_a0616:                               ; preds = %dec_label_pc_a0609, %dec_label_pc_a0581
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_a062b, label %dec_label_pc_a0626

dec_label_pc_a0626:                               ; preds = %dec_label_pc_a0616
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_a062b

dec_label_pc_a062b:                               ; preds = %dec_label_pc_a0626, %dec_label_pc_a0616
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_a0642:
  store i64 ptrtoint (ptr @global_var_eebf8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_a068e:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee420 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


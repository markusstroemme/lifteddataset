@global_var_fff = external global ptr
@0 = external global i32
@global_var_1000 = external global i32
@global_var_e5110 = external global %vtable_e5110_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8e44a:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8e495

dec_label_pc_8e495:                               ; preds = %dec_label_pc_8e495, %dec_label_pc_8e44a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8e4ac, label %dec_label_pc_8e495

dec_label_pc_8e4ac:                               ; preds = %dec_label_pc_8e495
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_8e519

dec_label_pc_8e519:                               ; preds = %dec_label_pc_8e519, %dec_label_pc_8e4ac
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8e530, label %dec_label_pc_8e519

dec_label_pc_8e530:                               ; preds = %dec_label_pc_8e519
  store i64 ptrtoint (ptr @global_var_e5110 to i64), ptr %stack_var_-56, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_8e5b7, label %dec_label_pc_8e5b2

dec_label_pc_8e5b2:                               ; preds = %dec_label_pc_8e530
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8e5b7

dec_label_pc_8e5b7:                               ; preds = %dec_label_pc_8e5b2, %dec_label_pc_8e530
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


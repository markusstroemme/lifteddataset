@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f684:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %funcPtr_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %funcPtr_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_f6d8

dec_label_pc_f6d8:                                ; preds = %dec_label_pc_f6d8, %dec_label_pc_f684
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_f6ef, label %dec_label_pc_f6d8

dec_label_pc_f6ef:                                ; preds = %dec_label_pc_f6d8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_f75a

dec_label_pc_f75a:                                ; preds = %dec_label_pc_f75a, %dec_label_pc_f6ef
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_f771, label %dec_label_pc_f75a

dec_label_pc_f771:                                ; preds = %dec_label_pc_f75a
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_f7df, label %dec_label_pc_f7da

dec_label_pc_f7da:                                ; preds = %dec_label_pc_f771
  call void @__stack_chk_fail()
  br label %dec_label_pc_f7df

dec_label_pc_f7df:                                ; preds = %dec_label_pc_f7da, %dec_label_pc_f771
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


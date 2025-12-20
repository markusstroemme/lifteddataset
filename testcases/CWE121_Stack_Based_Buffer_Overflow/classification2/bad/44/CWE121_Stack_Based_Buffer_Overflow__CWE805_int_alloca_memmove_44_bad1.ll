@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4f670:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %funcPtr_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %funcPtr_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4f6c6

dec_label_pc_4f6c6:                               ; preds = %dec_label_pc_4f6c6, %dec_label_pc_4f670
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4f6dd, label %dec_label_pc_4f6c6

dec_label_pc_4f6dd:                               ; preds = %dec_label_pc_4f6c6
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4f74a

dec_label_pc_4f74a:                               ; preds = %dec_label_pc_4f74a, %dec_label_pc_4f6dd
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4f761, label %dec_label_pc_4f74a

dec_label_pc_4f761:                               ; preds = %dec_label_pc_4f74a
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_4f7c8, label %dec_label_pc_4f7c3

dec_label_pc_4f7c3:                               ; preds = %dec_label_pc_4f761
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f7c8

dec_label_pc_4f7c8:                               ; preds = %dec_label_pc_4f7c3, %dec_label_pc_4f761
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


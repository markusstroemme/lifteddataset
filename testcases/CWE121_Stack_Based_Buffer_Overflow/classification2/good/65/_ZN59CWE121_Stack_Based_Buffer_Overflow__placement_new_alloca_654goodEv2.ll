@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4c158:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4c1ac

dec_label_pc_4c1ac:                               ; preds = %dec_label_pc_4c1ac, %dec_label_pc_4c158
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4c1c3, label %dec_label_pc_4c1ac

dec_label_pc_4c1c3:                               ; preds = %dec_label_pc_4c1ac
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4c22e

dec_label_pc_4c22e:                               ; preds = %dec_label_pc_4c22e, %dec_label_pc_4c1c3
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4c245, label %dec_label_pc_4c22e

dec_label_pc_4c245:                               ; preds = %dec_label_pc_4c22e
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_4c2ac, label %dec_label_pc_4c2a7

dec_label_pc_4c2a7:                               ; preds = %dec_label_pc_4c245
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c2ac

dec_label_pc_4c2ac:                               ; preds = %dec_label_pc_4c2a7, %dec_label_pc_4c245
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


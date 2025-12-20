@global_var_1000 = external global ptr
@0 = external global i32
@global_var_fff = external global i32
@global_var_9e308 = external global %vtable_9e308_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63100:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_63149

dec_label_pc_63149:                               ; preds = %dec_label_pc_63149, %dec_label_pc_63100
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_63160, label %dec_label_pc_63149

dec_label_pc_63160:                               ; preds = %dec_label_pc_63149
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_631cb

dec_label_pc_631cb:                               ; preds = %dec_label_pc_631cb, %dec_label_pc_63160
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_631e2, label %dec_label_pc_631cb

dec_label_pc_631e2:                               ; preds = %dec_label_pc_631cb
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store i64 ptrtoint (ptr @global_var_9e308 to i64), ptr %stack_var_-56, align 8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_63270, label %dec_label_pc_6326b

dec_label_pc_6326b:                               ; preds = %dec_label_pc_631e2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_63270

dec_label_pc_63270:                               ; preds = %dec_label_pc_6326b, %dec_label_pc_631e2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


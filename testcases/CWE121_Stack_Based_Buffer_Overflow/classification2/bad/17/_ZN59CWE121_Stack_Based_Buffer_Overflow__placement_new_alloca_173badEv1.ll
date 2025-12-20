@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_474cf:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i32, align 4
  %stack_var_-48.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i32, align 4
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_47518

dec_label_pc_47518:                               ; preds = %dec_label_pc_47518, %dec_label_pc_474cf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4752f, label %dec_label_pc_47518

dec_label_pc_4752f:                               ; preds = %dec_label_pc_47518
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4759a

dec_label_pc_4759a:                               ; preds = %dec_label_pc_4759a, %dec_label_pc_4752f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_47603.preheader, label %dec_label_pc_4759a

dec_label_pc_47603.preheader:                     ; preds = %dec_label_pc_4759a
  %7 = add i64 %4, 15
  %8 = and i64 %7, -16
  store i32 0, ptr %storemerge2.reg2mem, align 4
  br label %dec_label_pc_47603

dec_label_pc_47603:                               ; preds = %dec_label_pc_47603, %dec_label_pc_47603.preheader
  %storemerge2.reload = load i32, ptr %storemerge2.reg2mem, align 4
  %stack_var_-48.0.reload = load i64, ptr %stack_var_-48.0.reg2mem, align 8
  %9 = add nuw nsw i32 %storemerge2.reload, 1
  %exitcond = icmp eq i32 %9, 2
  store i64 %8, ptr %stack_var_-48.0.reg2mem, align 8
  store i32 %9, ptr %storemerge2.reg2mem, align 4
  br i1 %exitcond, label %dec_label_pc_47653, label %dec_label_pc_47603

dec_label_pc_47653:                               ; preds = %dec_label_pc_47603
  store i32 1, ptr %stack_var_-56, align 4
  %10 = inttoptr i64 %stack_var_-48.0.reload to ptr
  %11 = call ptr @_ZnwmPv(i64 8, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = bitcast ptr %11 to ptr
  store i32 5, ptr %13, align 4
  %14 = add i64 %12, 4
  %15 = inttoptr i64 %14 to ptr
  store i32 10, ptr %15, align 4
  %16 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_47668, label %dec_label_pc_47663

dec_label_pc_47663:                               ; preds = %dec_label_pc_47653
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_47668

dec_label_pc_47668:                               ; preds = %dec_label_pc_47663, %dec_label_pc_47653
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_6d64a = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89064 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_465be:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48.02.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_46607

dec_label_pc_46607:                               ; preds = %dec_label_pc_46607, %dec_label_pc_465be
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4661e, label %dec_label_pc_46607

dec_label_pc_4661e:                               ; preds = %dec_label_pc_46607
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_46689

dec_label_pc_46689:                               ; preds = %dec_label_pc_46689, %dec_label_pc_4661e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_466a0, label %dec_label_pc_46689

dec_label_pc_466a0:                               ; preds = %dec_label_pc_46689
  %7 = load i32, ptr @global_var_89064, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_46701.thread, label %dec_label_pc_46701

dec_label_pc_46701.thread:                        ; preds = %dec_label_pc_466a0
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 16
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-48.02.reg2mem, align 8
  br label %dec_label_pc_4670c

dec_label_pc_46701:                               ; preds = %dec_label_pc_466a0
  call void @printLine(ptr @global_var_6d64a)
  %.pre = load i32, ptr @global_var_89064, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  br i1 %phitmp1, label %dec_label_pc_46743, label %dec_label_pc_4670c

dec_label_pc_4670c:                               ; preds = %dec_label_pc_46701.thread, %dec_label_pc_46701
  %stack_var_-48.02.reload = load i64, ptr %stack_var_-48.02.reg2mem, align 8
  %11 = inttoptr i64 %stack_var_-48.02.reload to ptr
  %12 = call ptr @_ZnwmPv(i64 8, ptr %11)
  %13 = ptrtoint ptr %12 to i64
  %14 = bitcast ptr %12 to ptr
  store i32 5, ptr %14, align 4
  %15 = add i64 %13, 4
  %16 = inttoptr i64 %15 to ptr
  store i32 10, ptr %16, align 4
  %17 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_46743

dec_label_pc_46743:                               ; preds = %dec_label_pc_4670c, %dec_label_pc_46701
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_46758, label %dec_label_pc_46753

dec_label_pc_46753:                               ; preds = %dec_label_pc_46743
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_46758

dec_label_pc_46758:                               ; preds = %dec_label_pc_46753, %dec_label_pc_46743
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


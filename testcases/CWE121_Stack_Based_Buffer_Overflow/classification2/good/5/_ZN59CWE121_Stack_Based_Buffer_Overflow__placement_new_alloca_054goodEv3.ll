@global_var_6d5b0 = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89050 = external local_unnamed_addr global i32
@global_var_891c8 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4218c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_421d5

dec_label_pc_421d5:                               ; preds = %dec_label_pc_421d5, %dec_label_pc_4218c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_421ec, label %dec_label_pc_421d5

dec_label_pc_421ec:                               ; preds = %dec_label_pc_421d5
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_42257

dec_label_pc_42257:                               ; preds = %dec_label_pc_42257, %dec_label_pc_421ec
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4226e, label %dec_label_pc_42257

dec_label_pc_4226e:                               ; preds = %dec_label_pc_42257
  %7 = load i32, ptr @global_var_891c8, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_422c6, label %dec_label_pc_422b5

dec_label_pc_422b5:                               ; preds = %dec_label_pc_4226e
  call void @printLine(ptr @global_var_6d5b0)
  br label %dec_label_pc_422ce

dec_label_pc_422c6:                               ; preds = %dec_label_pc_4226e
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 16
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_422ce

dec_label_pc_422ce:                               ; preds = %dec_label_pc_422c6, %dec_label_pc_422b5
  %11 = load i32, ptr @global_var_89050, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_4230f, label %dec_label_pc_422d8

dec_label_pc_422d8:                               ; preds = %dec_label_pc_422ce
  %stack_var_-48.0.reload = load i64, ptr %stack_var_-48.0.reg2mem, align 8
  %13 = inttoptr i64 %stack_var_-48.0.reload to ptr
  %14 = call ptr @_ZnwmPv(i64 8, ptr %13)
  %15 = ptrtoint ptr %14 to i64
  %16 = bitcast ptr %14 to ptr
  store i32 5, ptr %16, align 4
  %17 = add i64 %15, 4
  %18 = inttoptr i64 %17 to ptr
  store i32 10, ptr %18, align 4
  %19 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %19)
  br label %dec_label_pc_4230f

dec_label_pc_4230f:                               ; preds = %dec_label_pc_422d8, %dec_label_pc_422ce
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_42324, label %dec_label_pc_4231f

dec_label_pc_4231f:                               ; preds = %dec_label_pc_4230f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42324

dec_label_pc_42324:                               ; preds = %dec_label_pc_4231f, %dec_label_pc_4230f
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


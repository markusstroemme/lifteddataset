@global_var_6d5cc = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89054 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_42dab:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_42df4

dec_label_pc_42df4:                               ; preds = %dec_label_pc_42df4, %dec_label_pc_42dab
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_42e0b, label %dec_label_pc_42df4

dec_label_pc_42e0b:                               ; preds = %dec_label_pc_42df4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_42e76

dec_label_pc_42e76:                               ; preds = %dec_label_pc_42e76, %dec_label_pc_42e0b
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_42e8d, label %dec_label_pc_42e76

dec_label_pc_42e8d:                               ; preds = %dec_label_pc_42e76
  %7 = load i32, ptr @global_var_89054, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_42ef9, label %dec_label_pc_42ee8

dec_label_pc_42ee8:                               ; preds = %dec_label_pc_42e8d
  call void @printLine(ptr @global_var_6d5cc)
  br label %dec_label_pc_42f25

dec_label_pc_42ef9:                               ; preds = %dec_label_pc_42e8d
  %9 = add i64 %4, 15
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @_ZnwmPv(i64 4, ptr %11)
  %13 = bitcast ptr %12 to ptr
  store i32 5, ptr %13, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_42f25

dec_label_pc_42f25:                               ; preds = %dec_label_pc_42ef9, %dec_label_pc_42ee8
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_42f3a, label %dec_label_pc_42f35

dec_label_pc_42f35:                               ; preds = %dec_label_pc_42f25
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42f3a

dec_label_pc_42f3a:                               ; preds = %dec_label_pc_42f35, %dec_label_pc_42f25
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


@global_var_6dbcb = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_89060 = external local_unnamed_addr global i32
@global_var_89238 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50c09:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_89238, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_50c51, label %dec_label_pc_50c40

dec_label_pc_50c40:                               ; preds = %dec_label_pc_50c09
  call void @printLine(ptr @global_var_6dbcb)
  br label %dec_label_pc_50c7d

dec_label_pc_50c51:                               ; preds = %dec_label_pc_50c09
  %5 = load i32, ptr @global_var_89060, align 4
  %6 = icmp eq i32 %5, 0
  %7 = ptrtoint ptr %stack_var_-24 to i64
  %spec.select = select i1 %6, i64 %1, i64 %7
  %8 = inttoptr i64 %spec.select to ptr
  %9 = call ptr @_ZnwmPv(i64 4, ptr %8)
  %10 = bitcast ptr %9 to ptr
  store i32 5, ptr %10, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_50c7d

dec_label_pc_50c7d:                               ; preds = %dec_label_pc_50c51, %dec_label_pc_50c40
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %2, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_50c92, label %dec_label_pc_50c8d

dec_label_pc_50c8d:                               ; preds = %dec_label_pc_50c7d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50c92

dec_label_pc_50c92:                               ; preds = %dec_label_pc_50c8d, %dec_label_pc_50c7d
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


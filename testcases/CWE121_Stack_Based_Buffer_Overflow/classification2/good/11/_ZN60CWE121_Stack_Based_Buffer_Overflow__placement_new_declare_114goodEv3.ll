@global_var_6dbe0 = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50fea:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_51024, label %dec_label_pc_51013

dec_label_pc_51013:                               ; preds = %dec_label_pc_50fea
  call void @printLine(ptr @global_var_6dbe0)
  br label %dec_label_pc_5102c

dec_label_pc_51024:                               ; preds = %dec_label_pc_50fea
  %5 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %5, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_5102c

dec_label_pc_5102c:                               ; preds = %dec_label_pc_51024, %dec_label_pc_51013
  %6 = call i32 @globalReturnsTrue()
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_51071, label %dec_label_pc_5103a

dec_label_pc_5103a:                               ; preds = %dec_label_pc_5102c
  %stack_var_-40.0.reload = load i64, ptr %stack_var_-40.0.reg2mem, align 8
  %10 = inttoptr i64 %stack_var_-40.0.reload to ptr
  %11 = call ptr @_ZnwmPv(i64 8, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = bitcast ptr %11 to ptr
  store i32 5, ptr %13, align 4
  %14 = add i64 %12, 4
  %15 = inttoptr i64 %14 to ptr
  store i32 10, ptr %15, align 4
  %16 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_51071

dec_label_pc_51071:                               ; preds = %dec_label_pc_5103a, %dec_label_pc_5102c
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_51086, label %dec_label_pc_51081

dec_label_pc_51081:                               ; preds = %dec_label_pc_51071
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_51086

dec_label_pc_51086:                               ; preds = %dec_label_pc_51081, %dec_label_pc_51071
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5c43d:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_5c44c:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


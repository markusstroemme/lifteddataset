@global_var_95388 = external constant [16 x i8]
@global_var_95398 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_76fbe:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_c3080, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_77034, label %dec_label_pc_77020

dec_label_pc_77020:                               ; preds = %dec_label_pc_76fbe
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_77043

dec_label_pc_77034:                               ; preds = %dec_label_pc_76fbe
  call void @printLine(ptr @global_var_95388)
  br label %dec_label_pc_77043

dec_label_pc_77043:                               ; preds = %dec_label_pc_77034, %dec_label_pc_77020
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_77058, label %dec_label_pc_77053

dec_label_pc_77053:                               ; preds = %dec_label_pc_77043
  call void @__stack_chk_fail()
  br label %dec_label_pc_77058

dec_label_pc_77058:                               ; preds = %dec_label_pc_77053, %dec_label_pc_77043
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7705a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_7708f, label %dec_label_pc_77077

dec_label_pc_77077:                               ; preds = %dec_label_pc_7705a
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_7709e

dec_label_pc_7708f:                               ; preds = %dec_label_pc_7705a
  call void @printLine(ptr @global_var_95398)
  br label %dec_label_pc_7709e

dec_label_pc_7709e:                               ; preds = %dec_label_pc_7708f, %dec_label_pc_77077
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_7719b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_771ee, label %dec_label_pc_771e9

dec_label_pc_771e9:                               ; preds = %dec_label_pc_7719b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_771ee

dec_label_pc_771ee:                               ; preds = %dec_label_pc_771e9, %dec_label_pc_7719b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


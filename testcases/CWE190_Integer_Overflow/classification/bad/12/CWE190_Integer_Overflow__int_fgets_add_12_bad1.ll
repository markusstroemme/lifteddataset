@global_var_90290 = external constant [16 x i8]
@global_var_902a0 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4fe97:
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4ff22, label %dec_label_pc_4fec7

dec_label_pc_4fec7:                               ; preds = %dec_label_pc_4fe97
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_c3080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_4ff0a, label %dec_label_pc_4fef9

dec_label_pc_4fef9:                               ; preds = %dec_label_pc_4fec7
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_4ff22

dec_label_pc_4ff0a:                               ; preds = %dec_label_pc_4fec7
  call void @printLine(ptr @global_var_90290)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_4ff22

dec_label_pc_4ff22:                               ; preds = %dec_label_pc_4fe97, %dec_label_pc_4ff0a, %dec_label_pc_4fef9
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_4ff45, label %dec_label_pc_4ff30

dec_label_pc_4ff30:                               ; preds = %dec_label_pc_4ff22
  %10 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4ff72

dec_label_pc_4ff45:                               ; preds = %dec_label_pc_4ff22
  %11 = icmp eq i32 %stack_var_-44.0.reload, 2147483647
  br i1 %11, label %dec_label_pc_4ff63, label %dec_label_pc_4ff4e

dec_label_pc_4ff4e:                               ; preds = %dec_label_pc_4ff45
  %12 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_4ff72

dec_label_pc_4ff63:                               ; preds = %dec_label_pc_4ff45
  call void @printLine(ptr @global_var_902a0)
  br label %dec_label_pc_4ff72

dec_label_pc_4ff72:                               ; preds = %dec_label_pc_4ff63, %dec_label_pc_4ff4e, %dec_label_pc_4ff30
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_4ff87, label %dec_label_pc_4ff82

dec_label_pc_4ff82:                               ; preds = %dec_label_pc_4ff72
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ff87

dec_label_pc_4ff87:                               ; preds = %dec_label_pc_4ff82, %dec_label_pc_4ff72
  ret void
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_77ab9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


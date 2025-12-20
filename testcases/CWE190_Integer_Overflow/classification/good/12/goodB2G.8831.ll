@global_var_85e50 = external constant [16 x i8]
@global_var_85e60 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_31977:
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %2, label %dec_label_pc_319fb, label %dec_label_pc_319a7

dec_label_pc_319a7:                               ; preds = %dec_label_pc_31977
  br i1 %6, label %dec_label_pc_319ea, label %dec_label_pc_319d9

dec_label_pc_319d9:                               ; preds = %dec_label_pc_319a7
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_31a4d

dec_label_pc_319ea:                               ; preds = %dec_label_pc_319a7
  call void @printLine(ptr @global_var_85e50)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_31a4d

dec_label_pc_319fb:                               ; preds = %dec_label_pc_31977
  br i1 %6, label %dec_label_pc_31a3e, label %dec_label_pc_31a2d

dec_label_pc_31a2d:                               ; preds = %dec_label_pc_319fb
  %8 = call i32 @atoi(ptr nonnull %4)
  store i32 %8, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_31a4d

dec_label_pc_31a3e:                               ; preds = %dec_label_pc_319fb
  call void @printLine(ptr @global_var_85e50)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_31a4d

dec_label_pc_31a4d:                               ; preds = %dec_label_pc_31a3e, %dec_label_pc_31a2d, %dec_label_pc_319ea, %dec_label_pc_319d9
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %stack_var_-44.0.reload, 2147483647
  br i1 %10, label %dec_label_pc_31a8b, label %dec_label_pc_31a5b

dec_label_pc_31a5b:                               ; preds = %dec_label_pc_31a4d
  br i1 %11, label %dec_label_pc_31a7a, label %dec_label_pc_31a64

dec_label_pc_31a64:                               ; preds = %dec_label_pc_31a5b
  %12 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_31ab9

dec_label_pc_31a7a:                               ; preds = %dec_label_pc_31a5b
  call void @printLine(ptr @global_var_85e60)
  br label %dec_label_pc_31ab9

dec_label_pc_31a8b:                               ; preds = %dec_label_pc_31a4d
  br i1 %11, label %dec_label_pc_31aaa, label %dec_label_pc_31a94

dec_label_pc_31a94:                               ; preds = %dec_label_pc_31a8b
  %13 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_31ab9

dec_label_pc_31aaa:                               ; preds = %dec_label_pc_31a8b
  call void @printLine(ptr @global_var_85e60)
  br label %dec_label_pc_31ab9

dec_label_pc_31ab9:                               ; preds = %dec_label_pc_31aaa, %dec_label_pc_31a94, %dec_label_pc_31a7a, %dec_label_pc_31a64
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_31ace, label %dec_label_pc_31ac9

dec_label_pc_31ac9:                               ; preds = %dec_label_pc_31ab9
  call void @__stack_chk_fail()
  br label %dec_label_pc_31ace

dec_label_pc_31ace:                               ; preds = %dec_label_pc_31ac9, %dec_label_pc_31ab9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


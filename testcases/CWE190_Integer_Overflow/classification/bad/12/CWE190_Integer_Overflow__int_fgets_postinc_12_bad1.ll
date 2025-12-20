@global_var_860b0 = external constant [16 x i8]
@global_var_860c0 = external constant [54 x i8]
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_31883:
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3190e, label %dec_label_pc_318b3

dec_label_pc_318b3:                               ; preds = %dec_label_pc_31883
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_318f6, label %dec_label_pc_318e5

dec_label_pc_318e5:                               ; preds = %dec_label_pc_318b3
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_3190e

dec_label_pc_318f6:                               ; preds = %dec_label_pc_318b3
  call void @printLine(ptr @global_var_860b0)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_3190e

dec_label_pc_3190e:                               ; preds = %dec_label_pc_31883, %dec_label_pc_318f6, %dec_label_pc_318e5
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_31932, label %dec_label_pc_3191c

dec_label_pc_3191c:                               ; preds = %dec_label_pc_3190e
  %10 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_31960

dec_label_pc_31932:                               ; preds = %dec_label_pc_3190e
  %11 = icmp eq i32 %stack_var_-44.0.reload, 2147483647
  br i1 %11, label %dec_label_pc_31951, label %dec_label_pc_3193b

dec_label_pc_3193b:                               ; preds = %dec_label_pc_31932
  %12 = add i32 %stack_var_-44.0.reload, 1
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_31960

dec_label_pc_31951:                               ; preds = %dec_label_pc_31932
  call void @printLine(ptr @global_var_860c0)
  br label %dec_label_pc_31960

dec_label_pc_31960:                               ; preds = %dec_label_pc_31951, %dec_label_pc_3193b, %dec_label_pc_3191c
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_31975, label %dec_label_pc_31970

dec_label_pc_31970:                               ; preds = %dec_label_pc_31960
  call void @__stack_chk_fail()
  br label %dec_label_pc_31975

dec_label_pc_31975:                               ; preds = %dec_label_pc_31970, %dec_label_pc_31960
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
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


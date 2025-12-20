@global_var_908d6 = external constant [16 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5304f:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_530b4, label %dec_label_pc_530a3

dec_label_pc_530a3:                               ; preds = %dec_label_pc_5304f
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_530c3

dec_label_pc_530b4:                               ; preds = %dec_label_pc_5304f
  call void @printLine(ptr @global_var_908d6)
  br label %dec_label_pc_530c3

dec_label_pc_530c3:                               ; preds = %dec_label_pc_530b4, %dec_label_pc_530a3
  call void @anon1(ptr nonnull %stack_var_-36)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_530e4, label %dec_label_pc_530df

dec_label_pc_530df:                               ; preds = %dec_label_pc_530c3
  call void @__stack_chk_fail()
  br label %dec_label_pc_530e4

dec_label_pc_530e4:                               ; preds = %dec_label_pc_530df, %dec_label_pc_530c3
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_531e8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printIntLine(i32 %3)
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


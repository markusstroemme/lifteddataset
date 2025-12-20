@global_var_71e20 = external constant [4 x i8]
@global_var_71e28 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_1d0f6:
  %stack_var_-12 = alloca i16, align 2
  store i16 %data, ptr %stack_var_-12, align 2
  %0 = load ptr, ptr @global_var_a9080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_71e20, ptr nonnull %stack_var_-12)
  %2 = load i16, ptr %stack_var_-12, align 2
  ret i16 %2
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1d130:
  %0 = call i16 @anon0(i16 0)
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_1d171, label %dec_label_pc_1d159

dec_label_pc_1d159:                               ; preds = %dec_label_pc_1d130
  %2 = zext i16 %0 to i32
  %3 = mul i32 %2, 65536
  %sext = add i32 %3, 65536
  %4 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_1d180

dec_label_pc_1d171:                               ; preds = %dec_label_pc_1d130
  call void @printLine(ptr @global_var_71e28)
  br label %dec_label_pc_1d180

dec_label_pc_1d180:                               ; preds = %dec_label_pc_1d171, %dec_label_pc_1d159
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr


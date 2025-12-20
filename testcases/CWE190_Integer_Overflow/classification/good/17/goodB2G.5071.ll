@global_var_71bf0 = external constant [4 x i8]
@global_var_71bf8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1c1f8:
  %k_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %k_-28, align 4
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71bf0, ptr nonnull %k_-28)
  %3 = load i32, ptr %k_-28, align 4
  %4 = trunc i32 %3 to i16
  %5 = icmp eq i16 %4, 32767
  br i1 %5, label %dec_label_pc_1c21a, label %dec_label_pc_1c202

dec_label_pc_1c202:                               ; preds = %dec_label_pc_1c1f8
  %6 = mul i32 %3, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_1c233

dec_label_pc_1c21a:                               ; preds = %dec_label_pc_1c1f8
  call void @printLine(ptr @global_var_71bf8)
  br label %dec_label_pc_1c233

dec_label_pc_1c233:                               ; preds = %dec_label_pc_1c202, %dec_label_pc_1c21a
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1c248, label %dec_label_pc_1c243

dec_label_pc_1c243:                               ; preds = %dec_label_pc_1c233
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c248

dec_label_pc_1c248:                               ; preds = %dec_label_pc_1c243, %dec_label_pc_1c233
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_71de0 = external constant [4 x i8]
@global_var_71de8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_1cf65:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_1cf97, label %dec_label_pc_1cf7f

dec_label_pc_1cf7f:                               ; preds = %dec_label_pc_1cf65
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1cfa6

dec_label_pc_1cf97:                               ; preds = %dec_label_pc_1cf65
  call void @printLine(ptr @global_var_71de8)
  br label %dec_label_pc_1cfa6

dec_label_pc_1cfa6:                               ; preds = %dec_label_pc_1cf97, %dec_label_pc_1cf7f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1cfa9:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71de0, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1d00d, label %dec_label_pc_1d008

dec_label_pc_1d008:                               ; preds = %dec_label_pc_1cfa9
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d00d

dec_label_pc_1d00d:                               ; preds = %dec_label_pc_1d008, %dec_label_pc_1cfa9
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


@global_var_68ef8 = external constant [3 x i8]
@global_var_68efb = external constant [21 x i8]
@global_var_68f10 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c12c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1b366:
  %0 = load i32, ptr @global_var_9c12c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b390, label %dec_label_pc_1b37f

dec_label_pc_1b37f:                               ; preds = %dec_label_pc_1b366
  call void @printLine(ptr @global_var_68efb)
  br label %dec_label_pc_1b3c9

dec_label_pc_1b390:                               ; preds = %dec_label_pc_1b366
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_1b3ba, label %dec_label_pc_1b3a4

dec_label_pc_1b3a4:                               ; preds = %dec_label_pc_1b390
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1b3c9

dec_label_pc_1b3ba:                               ; preds = %dec_label_pc_1b390
  call void @printLine(ptr @global_var_68f10)
  br label %dec_label_pc_1b3c9

dec_label_pc_1b3c9:                               ; preds = %dec_label_pc_1b3ba, %dec_label_pc_1b3a4, %dec_label_pc_1b37f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1b3cc:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68ef8, ptr nonnull %stack_var_-20)
  store i32 0, ptr @global_var_9c12c, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon0(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1b439, label %dec_label_pc_1b434

dec_label_pc_1b434:                               ; preds = %dec_label_pc_1b3cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b439

dec_label_pc_1b439:                               ; preds = %dec_label_pc_1b434, %dec_label_pc_1b3cc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


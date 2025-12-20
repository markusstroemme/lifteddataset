@global_var_69360 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_69356 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1d43c:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_69356)
  %3 = bitcast ptr %stack_var_-40 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1d4a7, label %dec_label_pc_1d4a2

dec_label_pc_1d4a2:                               ; preds = %dec_label_pc_1d43c
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d4a7

dec_label_pc_1d4a7:                               ; preds = %dec_label_pc_1d4a2, %dec_label_pc_1d43c
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1d528:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %.off = add i32 %4, 65534
  %5 = icmp ugt i32 %.off, 131068
  br i1 %5, label %dec_label_pc_1d56b, label %dec_label_pc_1d556

dec_label_pc_1d556:                               ; preds = %dec_label_pc_1d528
  %6 = mul i32 %4, %4
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_1d57b

dec_label_pc_1d56b:                               ; preds = %dec_label_pc_1d528
  call void @printLine(ptr @global_var_69360)
  br label %dec_label_pc_1d57b

dec_label_pc_1d57b:                               ; preds = %dec_label_pc_1d56b, %dec_label_pc_1d556
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


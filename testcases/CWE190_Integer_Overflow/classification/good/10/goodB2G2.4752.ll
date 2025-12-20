@global_var_68c78 = external constant [3 x i8]
@global_var_68c90 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_19fc0:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1a054, label %dec_label_pc_1a00e

dec_label_pc_1a00e:                               ; preds = %dec_label_pc_19fc0
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68c78, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c068, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_1a054, label %dec_label_pc_1a018

dec_label_pc_1a018:                               ; preds = %dec_label_pc_1a00e
  %6 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %6, 65534
  %7 = icmp ugt i32 %.off, 131068
  br i1 %7, label %dec_label_pc_1a045, label %dec_label_pc_1a02c

dec_label_pc_1a02c:                               ; preds = %dec_label_pc_1a018
  %8 = mul i32 %6, %6
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_1a054

dec_label_pc_1a045:                               ; preds = %dec_label_pc_1a018
  call void @printLine(ptr @global_var_68c90)
  br label %dec_label_pc_1a054

dec_label_pc_1a054:                               ; preds = %dec_label_pc_19fc0, %dec_label_pc_1a045, %dec_label_pc_1a02c, %dec_label_pc_1a00e
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1a069, label %dec_label_pc_1a064

dec_label_pc_1a064:                               ; preds = %dec_label_pc_1a054
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a069

dec_label_pc_1a069:                               ; preds = %dec_label_pc_1a064, %dec_label_pc_1a054
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


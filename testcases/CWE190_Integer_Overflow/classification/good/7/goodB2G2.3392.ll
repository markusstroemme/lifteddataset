@global_var_68138 = external constant [3 x i8]
@global_var_68150 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1464e:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_146dc, label %dec_label_pc_1469d

dec_label_pc_1469d:                               ; preds = %dec_label_pc_1464e
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68138, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr %stack_var_-24, align 4
  %6 = load i32, ptr @global_var_9c024, align 4
  %7 = icmp eq i32 %6, 5
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i32 %.pr, 0
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %dec_label_pc_146dc, label %dec_label_pc_146af

dec_label_pc_146af:                               ; preds = %dec_label_pc_1469d
  %10 = icmp ult i32 %.pr, 2147483647
  br i1 %10, label %dec_label_pc_146b9, label %dec_label_pc_146cd

dec_label_pc_146b9:                               ; preds = %dec_label_pc_146af
  %11 = mul i32 %.pr, 2
  call void @printUnsignedLine(i32 %11)
  br label %dec_label_pc_146dc

dec_label_pc_146cd:                               ; preds = %dec_label_pc_146af
  call void @printLine(ptr @global_var_68150)
  br label %dec_label_pc_146dc

dec_label_pc_146dc:                               ; preds = %dec_label_pc_1464e, %dec_label_pc_146cd, %dec_label_pc_146b9, %dec_label_pc_1469d
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_146f1, label %dec_label_pc_146ec

dec_label_pc_146ec:                               ; preds = %dec_label_pc_146dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_146f1

dec_label_pc_146f1:                               ; preds = %dec_label_pc_146ec, %dec_label_pc_146dc
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


@global_var_69299 = external constant [3 x i8]
@global_var_692a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1ce77:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_69299, ptr nonnull %stack_var_-20)
  call void @anon0(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1cedc, label %dec_label_pc_1ced7

dec_label_pc_1ced7:                               ; preds = %dec_label_pc_1ce77
  call void @__stack_chk_fail()
  br label %dec_label_pc_1cedc

dec_label_pc_1cedc:                               ; preds = %dec_label_pc_1ced7, %dec_label_pc_1ce77
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1cf5b:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 65534
  %3 = icmp ugt i32 %.off, 131068
  br i1 %3, label %dec_label_pc_1cf9d, label %dec_label_pc_1cf88

dec_label_pc_1cf88:                               ; preds = %dec_label_pc_1cf5b
  %4 = mul i32 %2, %2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_1cfad

dec_label_pc_1cf9d:                               ; preds = %dec_label_pc_1cf5b
  call void @printLine(ptr @global_var_692a0)
  br label %dec_label_pc_1cfad

dec_label_pc_1cfad:                               ; preds = %dec_label_pc_1cf9d, %dec_label_pc_1cf88
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


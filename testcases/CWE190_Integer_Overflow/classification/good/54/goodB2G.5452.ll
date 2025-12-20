@global_var_69228 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_6921e = external constant [3 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_1ca45:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6921e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1caa8, label %dec_label_pc_1caa3

dec_label_pc_1caa3:                               ; preds = %dec_label_pc_1ca45
  call void @__stack_chk_fail()
  br label %dec_label_pc_1caa8

dec_label_pc_1caa8:                               ; preds = %dec_label_pc_1caa3, %dec_label_pc_1ca45
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1cb01:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1cb55:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_1cba9:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_1cc0f:
  %data.off = add i32 %data, 65534
  %0 = icmp ugt i32 %data.off, 131068
  br i1 %0, label %dec_label_pc_1cc47, label %dec_label_pc_1cc32

dec_label_pc_1cc32:                               ; preds = %dec_label_pc_1cc0f
  %1 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_1cc57

dec_label_pc_1cc47:                               ; preds = %dec_label_pc_1cc0f
  call void @printLine(ptr @global_var_69228)
  br label %dec_label_pc_1cc57

dec_label_pc_1cc57:                               ; preds = %dec_label_pc_1cc47, %dec_label_pc_1cc32
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


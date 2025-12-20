@global_var_67d88 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67d7e = external constant [3 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_128e8:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67d7e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1294b, label %dec_label_pc_12946

dec_label_pc_12946:                               ; preds = %dec_label_pc_128e8
  call void @__stack_chk_fail()
  br label %dec_label_pc_1294b

dec_label_pc_1294b:                               ; preds = %dec_label_pc_12946, %dec_label_pc_128e8
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_129a4:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_129f8:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_12a4c:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_12ab2:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_12adc, label %dec_label_pc_12ac7

dec_label_pc_12ac7:                               ; preds = %dec_label_pc_12ab2
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_12aeb

dec_label_pc_12adc:                               ; preds = %dec_label_pc_12ab2
  call void @printLine(ptr @global_var_67d88)
  br label %dec_label_pc_12aeb

dec_label_pc_12aeb:                               ; preds = %dec_label_pc_12adc, %dec_label_pc_12ac7
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


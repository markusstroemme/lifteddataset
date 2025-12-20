@global_var_6da48 = external constant [54 x i8]
@global_var_6da7e = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32
@global_var_9c070 = external global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_45a62:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_45ac4, label %dec_label_pc_45a97

dec_label_pc_45a97:                               ; preds = %dec_label_pc_45a62
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_45aa1, label %dec_label_pc_45ab5

dec_label_pc_45aa1:                               ; preds = %dec_label_pc_45a97
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_45ac4

dec_label_pc_45ab5:                               ; preds = %dec_label_pc_45a97
  call void @printLine(ptr @global_var_6da48)
  br label %dec_label_pc_45ac4

dec_label_pc_45ac4:                               ; preds = %dec_label_pc_45ab5, %dec_label_pc_45aa1, %dec_label_pc_45a62
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_45ad9, label %dec_label_pc_45ad4

dec_label_pc_45ad4:                               ; preds = %dec_label_pc_45ac4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45ad9

dec_label_pc_45ad9:                               ; preds = %dec_label_pc_45ad4, %dec_label_pc_45ac4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_45b3e:
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_6da7e, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
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


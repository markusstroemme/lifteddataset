@global_var_68890 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68886 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_17f6e:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68886)
  %3 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_17fd3, label %dec_label_pc_17fce

dec_label_pc_17fce:                               ; preds = %dec_label_pc_17f6e
  call void @__stack_chk_fail()
  br label %dec_label_pc_17fd3

dec_label_pc_17fd3:                               ; preds = %dec_label_pc_17fce, %dec_label_pc_17f6e
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1806c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_180bf, label %dec_label_pc_18093

dec_label_pc_18093:                               ; preds = %dec_label_pc_1806c
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_1809c, label %dec_label_pc_180b0

dec_label_pc_1809c:                               ; preds = %dec_label_pc_18093
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_180bf

dec_label_pc_180b0:                               ; preds = %dec_label_pc_18093
  call void @printLine(ptr @global_var_68890)
  br label %dec_label_pc_180bf

dec_label_pc_180bf:                               ; preds = %dec_label_pc_180b0, %dec_label_pc_1809c, %dec_label_pc_1806c
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


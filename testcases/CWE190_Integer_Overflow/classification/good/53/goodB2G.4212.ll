@global_var_68798 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_6878e = external constant [3 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_176f7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6878e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1775a, label %dec_label_pc_17755

dec_label_pc_17755:                               ; preds = %dec_label_pc_176f7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1775a

dec_label_pc_1775a:                               ; preds = %dec_label_pc_17755, %dec_label_pc_176f7
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_177b3:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_17807:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_17877:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_178b8, label %dec_label_pc_1788c

dec_label_pc_1788c:                               ; preds = %dec_label_pc_17877
  %1 = icmp ult i32 %data, 2147483647
  br i1 %1, label %dec_label_pc_17895, label %dec_label_pc_178a9

dec_label_pc_17895:                               ; preds = %dec_label_pc_1788c
  %2 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_178b8

dec_label_pc_178a9:                               ; preds = %dec_label_pc_1788c
  call void @printLine(ptr @global_var_68798)
  br label %dec_label_pc_178b8

dec_label_pc_178b8:                               ; preds = %dec_label_pc_178a9, %dec_label_pc_17895, %dec_label_pc_17877
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


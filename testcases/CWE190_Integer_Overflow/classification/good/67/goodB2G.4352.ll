@global_var_68950 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68946 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1852a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68946)
  call void @anon0(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_18593, label %dec_label_pc_1858e

dec_label_pc_1858e:                               ; preds = %dec_label_pc_1852a
  call void @__stack_chk_fail()
  br label %dec_label_pc_18593

dec_label_pc_18593:                               ; preds = %dec_label_pc_1858e, %dec_label_pc_1852a
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_18614:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1865b, label %dec_label_pc_1862f

dec_label_pc_1862f:                               ; preds = %dec_label_pc_18614
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_18638, label %dec_label_pc_1864c

dec_label_pc_18638:                               ; preds = %dec_label_pc_1862f
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_1865b

dec_label_pc_1864c:                               ; preds = %dec_label_pc_1862f
  call void @printLine(ptr @global_var_68950)
  br label %dec_label_pc_1865b

dec_label_pc_1865b:                               ; preds = %dec_label_pc_1864c, %dec_label_pc_18638, %dec_label_pc_18614
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


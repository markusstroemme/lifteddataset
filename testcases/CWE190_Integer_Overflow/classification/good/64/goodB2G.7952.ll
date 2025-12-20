@global_var_6a600 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_246b7:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_24701, label %dec_label_pc_246fc

dec_label_pc_246fc:                               ; preds = %dec_label_pc_246b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_24701

dec_label_pc_24701:                               ; preds = %dec_label_pc_246fc, %dec_label_pc_246b7
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2479a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_247ed, label %dec_label_pc_247c1

dec_label_pc_247c1:                               ; preds = %dec_label_pc_2479a
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_247ca, label %dec_label_pc_247de

dec_label_pc_247ca:                               ; preds = %dec_label_pc_247c1
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_247ed

dec_label_pc_247de:                               ; preds = %dec_label_pc_247c1
  call void @printLine(ptr @global_var_6a600)
  br label %dec_label_pc_247ed

dec_label_pc_247ed:                               ; preds = %dec_label_pc_247de, %dec_label_pc_247ca, %dec_label_pc_2479a
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

declare i64 @__readfsqword(i64) local_unnamed_addr


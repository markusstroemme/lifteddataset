@global_var_6af80 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2828c:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_282d6, label %dec_label_pc_282d1

dec_label_pc_282d1:                               ; preds = %dec_label_pc_2828c
  call void @__stack_chk_fail()
  br label %dec_label_pc_282d6

dec_label_pc_282d6:                               ; preds = %dec_label_pc_282d1, %dec_label_pc_2828c
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_28365:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 65534
  %3 = icmp ugt i32 %.off, 131068
  br i1 %3, label %dec_label_pc_283af, label %dec_label_pc_2839a

dec_label_pc_2839a:                               ; preds = %dec_label_pc_28365
  %4 = mul i32 %2, %2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_283bf

dec_label_pc_283af:                               ; preds = %dec_label_pc_28365
  call void @printLine(ptr @global_var_6af80)
  br label %dec_label_pc_283bf

dec_label_pc_283bf:                               ; preds = %dec_label_pc_283af, %dec_label_pc_2839a
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


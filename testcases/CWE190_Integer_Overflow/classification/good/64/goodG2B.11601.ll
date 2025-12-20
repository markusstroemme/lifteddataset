@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3276e:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_327b8, label %dec_label_pc_327b3

dec_label_pc_327b3:                               ; preds = %dec_label_pc_3276e
  call void @__stack_chk_fail()
  br label %dec_label_pc_327b8

dec_label_pc_327b8:                               ; preds = %dec_label_pc_327b3, %dec_label_pc_3276e
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_328a8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_328e1, label %dec_label_pc_328cf

dec_label_pc_328cf:                               ; preds = %dec_label_pc_328a8
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_328e1

dec_label_pc_328e1:                               ; preds = %dec_label_pc_328cf, %dec_label_pc_328a8
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


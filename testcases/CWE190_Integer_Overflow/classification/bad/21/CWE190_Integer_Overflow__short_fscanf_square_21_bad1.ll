@global_var_731b0 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a91a4 = external local_unnamed_addr global i32

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_26ada:
  %0 = load i32, ptr @global_var_a91a4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26b10, label %dec_label_pc_26af6

dec_label_pc_26af6:                               ; preds = %dec_label_pc_26ada
  %2 = mul i16 %data, %data
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_26b10

dec_label_pc_26b10:                               ; preds = %dec_label_pc_26af6, %dec_label_pc_26ada
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_26b13:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_731b0, ptr nonnull %stack_var_-18)
  store i32 1, ptr @global_var_a91a4, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon1(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_26b81, label %dec_label_pc_26b7c

dec_label_pc_26b7c:                               ; preds = %dec_label_pc_26b13
  call void @__stack_chk_fail()
  br label %dec_label_pc_26b81

dec_label_pc_26b81:                               ; preds = %dec_label_pc_26b7c, %dec_label_pc_26b13
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


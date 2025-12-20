@global_var_684a8 = external constant [3 x i8]
@global_var_684c0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c0f4 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_16322:
  %0 = load i32, ptr @global_var_9c0f4, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_1636d, label %dec_label_pc_16341

dec_label_pc_16341:                               ; preds = %dec_label_pc_16322
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_1634a, label %dec_label_pc_1635e

dec_label_pc_1634a:                               ; preds = %dec_label_pc_16341
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_1636d

dec_label_pc_1635e:                               ; preds = %dec_label_pc_16341
  call void @printLine(ptr @global_var_684c0)
  br label %dec_label_pc_1636d

dec_label_pc_1636d:                               ; preds = %dec_label_pc_1635e, %dec_label_pc_1634a, %dec_label_pc_16322
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_16370:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_684a8, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_9c0f4, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon0(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_163dd, label %dec_label_pc_163d8

dec_label_pc_163d8:                               ; preds = %dec_label_pc_16370
  call void @__stack_chk_fail()
  br label %dec_label_pc_163dd

dec_label_pc_163dd:                               ; preds = %dec_label_pc_163d8, %dec_label_pc_16370
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


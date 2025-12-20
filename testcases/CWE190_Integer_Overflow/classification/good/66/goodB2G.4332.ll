@global_var_68910 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68906 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1834d:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68906)
  %3 = bitcast ptr %stack_var_-40 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_183b8, label %dec_label_pc_183b3

dec_label_pc_183b3:                               ; preds = %dec_label_pc_1834d
  call void @__stack_chk_fail()
  br label %dec_label_pc_183b8

dec_label_pc_183b8:                               ; preds = %dec_label_pc_183b3, %dec_label_pc_1834d
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_18443:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_1848f, label %dec_label_pc_18463

dec_label_pc_18463:                               ; preds = %dec_label_pc_18443
  %6 = icmp ult i32 %4, 2147483647
  br i1 %6, label %dec_label_pc_1846c, label %dec_label_pc_18480

dec_label_pc_1846c:                               ; preds = %dec_label_pc_18463
  %7 = mul i32 %4, 2
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_1848f

dec_label_pc_18480:                               ; preds = %dec_label_pc_18463
  call void @printLine(ptr @global_var_68910)
  br label %dec_label_pc_1848f

dec_label_pc_1848f:                               ; preds = %dec_label_pc_18480, %dec_label_pc_1846c, %dec_label_pc_18443
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


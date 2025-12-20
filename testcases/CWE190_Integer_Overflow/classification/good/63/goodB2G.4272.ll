@global_var_68849 = external constant [3 x i8]
@global_var_68850 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_17d7f:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68849, ptr nonnull %stack_var_-20)
  call void @anon0(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_17de4, label %dec_label_pc_17ddf

dec_label_pc_17ddf:                               ; preds = %dec_label_pc_17d7f
  call void @__stack_chk_fail()
  br label %dec_label_pc_17de4

dec_label_pc_17de4:                               ; preds = %dec_label_pc_17ddf, %dec_label_pc_17d7f
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_17e6d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_17eb8, label %dec_label_pc_17e8c

dec_label_pc_17e8c:                               ; preds = %dec_label_pc_17e6d
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_17e95, label %dec_label_pc_17ea9

dec_label_pc_17e95:                               ; preds = %dec_label_pc_17e8c
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_17eb8

dec_label_pc_17ea9:                               ; preds = %dec_label_pc_17e8c
  call void @printLine(ptr @global_var_68850)
  br label %dec_label_pc_17eb8

dec_label_pc_17eb8:                               ; preds = %dec_label_pc_17ea9, %dec_label_pc_17e95, %dec_label_pc_17e6d
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


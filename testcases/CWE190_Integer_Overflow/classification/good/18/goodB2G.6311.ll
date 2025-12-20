@global_var_726d0 = external constant [4 x i8]
@global_var_726d8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2159e:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_726d0, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = icmp slt i16 %3, 1
  br i1 %4, label %dec_label_pc_2161c, label %dec_label_pc_215ec

dec_label_pc_215ec:                               ; preds = %dec_label_pc_2159e
  %5 = icmp sgt i16 %3, 16382
  br i1 %5, label %dec_label_pc_2160d, label %dec_label_pc_215f6

dec_label_pc_215f6:                               ; preds = %dec_label_pc_215ec
  %6 = mul i16 %3, 2
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_2161c

dec_label_pc_2160d:                               ; preds = %dec_label_pc_215ec
  call void @printLine(ptr @global_var_726d8)
  br label %dec_label_pc_2161c

dec_label_pc_2161c:                               ; preds = %dec_label_pc_2160d, %dec_label_pc_215f6, %dec_label_pc_2159e
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_21631, label %dec_label_pc_2162c

dec_label_pc_2162c:                               ; preds = %dec_label_pc_2161c
  call void @__stack_chk_fail()
  br label %dec_label_pc_21631

dec_label_pc_21631:                               ; preds = %dec_label_pc_2162c, %dec_label_pc_2161c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


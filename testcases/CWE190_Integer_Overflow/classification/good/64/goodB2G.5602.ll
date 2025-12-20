@global_var_72056 = external constant [4 x i8]
@global_var_72060 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1e241:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72056, ptr nonnull %stack_var_-18)
  %3 = bitcast ptr %stack_var_-18 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1e2a5, label %dec_label_pc_1e2a0

dec_label_pc_1e2a0:                               ; preds = %dec_label_pc_1e241
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e2a5

dec_label_pc_1e2a5:                               ; preds = %dec_label_pc_1e2a0, %dec_label_pc_1e241
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1e33e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_1e381, label %dec_label_pc_1e369

dec_label_pc_1e369:                               ; preds = %dec_label_pc_1e33e
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 65536
  %sext = add i32 %5, 65536
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_1e390

dec_label_pc_1e381:                               ; preds = %dec_label_pc_1e33e
  call void @printLine(ptr @global_var_72060)
  br label %dec_label_pc_1e390

dec_label_pc_1e390:                               ; preds = %dec_label_pc_1e381, %dec_label_pc_1e369
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


@global_var_7341e = external constant [4 x i8]
@global_var_73428 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_27d7d:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_7341e, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_27de1, label %dec_label_pc_27ddc

dec_label_pc_27ddc:                               ; preds = %dec_label_pc_27d7d
  call void @__stack_chk_fail()
  br label %dec_label_pc_27de1

dec_label_pc_27de1:                               ; preds = %dec_label_pc_27ddc, %dec_label_pc_27d7d
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_27e60:
  %0 = sub i16 0, %data
  %1 = icmp slt i16 %0, 0
  %2 = icmp eq i1 %1, false
  %.v = select i1 %2, i16 %0, i16 %data
  %3 = icmp ult i16 %.v, 182
  br i1 %3, label %dec_label_pc_27e84, label %dec_label_pc_27ea0

dec_label_pc_27e84:                               ; preds = %dec_label_pc_27e60
  %4 = mul i16 %data, %data
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_27eaf

dec_label_pc_27ea0:                               ; preds = %dec_label_pc_27e60
  call void @printLine(ptr @global_var_73428)
  br label %dec_label_pc_27eaf

dec_label_pc_27eaf:                               ; preds = %dec_label_pc_27ea0, %dec_label_pc_27e84
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


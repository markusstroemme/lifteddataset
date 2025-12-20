@global_var_7345e = external constant [4 x i8]
@global_var_73468 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon2() local_unnamed_addr {
dec_label_pc_27f3e:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_7345e, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_27fa2, label %dec_label_pc_27f9d

dec_label_pc_27f9d:                               ; preds = %dec_label_pc_27f3e
  call void @__stack_chk_fail()
  br label %dec_label_pc_27fa2

dec_label_pc_27fa2:                               ; preds = %dec_label_pc_27f9d, %dec_label_pc_27f3e
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_28003:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_28081:
  %0 = sub i16 0, %data
  %1 = icmp slt i16 %0, 0
  %2 = icmp eq i1 %1, false
  %.v = select i1 %2, i16 %0, i16 %data
  %3 = icmp ult i16 %.v, 182
  br i1 %3, label %dec_label_pc_280a5, label %dec_label_pc_280c1

dec_label_pc_280a5:                               ; preds = %dec_label_pc_28081
  %4 = mul i16 %data, %data
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_280d0

dec_label_pc_280c1:                               ; preds = %dec_label_pc_28081
  call void @printLine(ptr @global_var_73468)
  br label %dec_label_pc_280d0

dec_label_pc_280d0:                               ; preds = %dec_label_pc_280c1, %dec_label_pc_280a5
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


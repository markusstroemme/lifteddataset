@global_var_8957e = external constant [4 x i8]
@global_var_89588 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon3() local_unnamed_addr {
dec_label_pc_51ea4:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8957e, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_51f08, label %dec_label_pc_51f03

dec_label_pc_51f03:                               ; preds = %dec_label_pc_51ea4
  call void @__stack_chk_fail()
  br label %dec_label_pc_51f08

dec_label_pc_51f08:                               ; preds = %dec_label_pc_51f03, %dec_label_pc_51ea4
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_51f69:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_51fc9:
  call void @anon2(i16 %data)
  ret void
}

define void @anon2(i16 %data) local_unnamed_addr {
dec_label_pc_5204f:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_52089, label %dec_label_pc_52069

dec_label_pc_52069:                               ; preds = %dec_label_pc_5204f
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_52098

dec_label_pc_52089:                               ; preds = %dec_label_pc_5204f
  call void @printLine(ptr @global_var_89588)
  br label %dec_label_pc_52098

dec_label_pc_52098:                               ; preds = %dec_label_pc_52089, %dec_label_pc_52069
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

